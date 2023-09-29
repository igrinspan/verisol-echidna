# Notas

Falta:

- acomodar los prints para que sólo sucedan en modo debug o verbose.
- agregar las flags de optimizaciones.


python3 main.py <contract> <mode> <tool> [options]

[options]: txbound=..., time_out=..., test_limit=... 


### Problema "File outside of allowed directories" (Solucionado).
Probando el VeriSol Runner para el try_preconditions:
VeriSol retorna, para todos los threads:

```sh
Cannot import url ("/Users/iangrinspan/Documents/2C2023/Beca/verisol-echidna/app/../results_main/verisol_output/RoomThermostat/-default/epa/thread_0/preconditions.sol"): File outside of allowed directories.\nVeriSol Error: Compilation Error\n')
```

Pero si corro VeriSol directamente en esa carpeta por separado sí funciona y encuentra los assertions failed. Sólo faltaría solucionar eso.

También funciona si corro, desde verisol-echidna: 

```sh
VeriSol results_main/verisol_output/RoomThermostat/-default/epa/thread_1/preconditions.sol RoomThermostat
```

Esto del path se solucionó cambiando haciendo os.path.realpath(preconditions_contract), porque el compilador de Solidity tiene algo medio raro con los paths que no son canónicos. 

Cambió de [...]/verisol-echidna/app/../results_main/[...] a [...]/verisol-echidna/results_main/[...]. Porque el primer path entraba a una carpeta y después salía.


## Cosas


El `main.py` recibe:

- ContractConfigFile
- Mode
- Tool
- Budget

Para debuggear:
- `import pdb; pdb.set_trace()` en la línea que quiera


### Cantidad de threads y contratos
En VeriSol se hace lo siguiente:

```python
threadCount = 8
threads = []

preconditionsThreads = np.array_split(preconditions, threadCount)
statesThreads = np.array_split(states, threadCount)
if len(extraConditions) != 0:
    extraConditionsThreads = np.array_split(extraConditions, threadCount)

# Luego hace:
for i in range(threadCount):
    thread = Thread(target = reduceCombinations, args = [i])
    thread.start()
    threads.append(thread)

for thread in threads:
    thread.join()
```

Acá ya hay un problema porque es posible que se creen más contratos de los necesarios, algunos sin queries. Por ejemplo, si tenemos 2 funciones, vamos a tener 4 estados posibles. Entonces, si tenemos 8 threads, se van a crear 4 contratos con una query cada uno y 4 contratos sin queries.


#### Ahora, ¿qué hace reduceCombinations?
```python

def reduceCombinations(thread_id):
    # 1. Crea las queries de las preconditions asignadas a ese thread.
    # 2. Crea un contrato con esas queries.
    # 3. Ejecuta verisol para ese contrato.
    # 4. Actualiza las preconditions de ese thread, eliminando las que son "unreachable".

# Las queries las calcula a partir de los arreglos definidos antes: 
preconditionsThreads
statesThreads
extraConditionsThreads

# preconditionsThreads y statesThreads van de la mano.
# [p1, !p2, !p3] se corresponde con [1, 0, 0]. 
```

Entonces, lo que yo debería hacer es:
- Descartar los arreglos vacíos de preconditionsThreads, statesThreads y extraConditionsThreads.
- Obtener la cantidad de arreglos no vacíos, sea N.
- Crear N threads y por cada uno, ejecutar reduceCombinations(i).

- Como son threads y creo que no hay manera de que devuelvan cosas, dejo como estaba que actualicen los arreglos que ya tenía.

Pero una vez que tengo esos arreglos nuevamente, los aplano. Entonces me quedan las preconditions y los states con los unreachable descartados.