# verisol-echidna

### Correr (desde la carpeta app)
```
    python3 main.py <contract-config-file> <mode> <tool> [tool specific options]
```

[options]: txbound=..., time_out=..., test_limit=... 

Por ejemplo:

- python3 main.py RoomThermostatConfig e verisol txbound=4 time_out=30
- python3 main.py RoomThermostatConfig s echidna test_limit=100000

Por ahora test_limit y txbound son obligatorios (una cuando corremos echidna y la otra cuando corremos verisol), porque los estoy usando para definir el directorio donde se guardan los resultados.

(Uso solc-select para instalar y cambiar la versión de Solidity. Actualmente lo estoy corriendo con la 0.8.0)  

#### Resultados

El grafo resultante se guarda en el directorio results, con el path:
`{tool}_output/contract/mode/budget`, donde budget es txbound si corremos VeriSol y test_limit si corremos echidna.

En esa carpeta también se guardan los contratos que fueron ejecutados para resolver las queries y todos los archivos que escupe VeriSol de Boogie y Corral.


### Para correr el script de python (desde la carpeta app)
```
    python3 Tesis.py <ArchivoConfigDelContrato>  -echidna <TestLimit>
```

- ArchivoConfigDelContrato puede ser por ejemplo CrowdfundingConfig.
- TestLimit es uno de los parámetros de ejecución de echidna.

Esta ejecución va a crear los contratos, correrlos, crear un grafo en results e imprimir las transiciones por consola.


(Hay un path absoluto dentro de Tesis.py, hay que cambiarlo).


#### Comando de echidna para correr un contrato y que devuelva directamente por consola
Podemos ignorar la config file y directamente poner los valores de cada configuración dentro del comando. Tipo:

```
    echidna ./Contracts/ContractFile.sol --contract ContractToTest --config configEchidna.yaml 
```

En configEchidna.yaml podemos poner todos los parámetros de echidna.

###  Flags de echidna

```
Usage: echidna [--version] FILES [--contract CONTRACT] [--config CONFIG] 
               [--format FORMAT] [--corpus-dir PATH] [--test-mode ARG] 
               [--all-contracts] [--test-limit INTEGER] [--shrink-limit INTEGER]
               [--seq-len INTEGER] [--contract-addr ADDRESS] 
               [--deployer ADDRESS] [--sender ADDRESS] [--seed SEED] 
               [--crytic-args ARGS] [--solc-args ARGS]
```
Notar que no están maxValue ni balanceContract. En vez de agregarlos en el comando directamente podemos crear una configFile con python.


Los resultados tienen dos tipos, dependiendo si el test falló o pasó:

- Si el test pasa 
```
state3_to_state2_reset():  passed! 🎉
```
- Si el test falla
```
state2_to_state2_pop(): failed!💥
Call sequence:
  state1_to_state3_push(0)
  state2_to_state3_push(0)
  state2_to_state2_pop()
  ```