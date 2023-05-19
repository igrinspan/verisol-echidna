# verisol-echidna

### Para correr el script de python (desde verisol-test-main)
```
    python3 tesis.py CrowdfundingTimeBalanceConfig  -echidna
```


Debemos cambiar el path.

#### Comando de echidna para correr un contrato y que devuelva directamente por consola
Podemos ignorar la config file y directamente poner los valores de cada configuración dentro del comando. Tipo:

```
    echidna ./Contracts/ContractFile.sol --contract ContractToTest --test-mode assertion --format 'text' --test-limit 50000 --shrink-limit 0
```

El `--format 'text'` hace que no imprima la interfaz interactiva, sino que devuelve los resultados directamente por consola.

Para crowdfunding nos sirve variar también el maxValue y el balanceContract, (maxValue: 100, balanceContract: 0)

### Flags de echidna
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


### Hasta ahora

- Agregué un -echidna que nos manda a main con echidna == True.
- En el main cargamos todo.
- Ignoramos todo lo de los threads (antes de que se haga eso, llamamos validCombinations(0, "echidna"))
- A validCombinations le agregué el segundo parámetro (por default dejo verisol), para ver qué tool tiene que ejecutar.
- En validComb metí un if que diferencia la tool a usar y listo.
- En `try_transaction` y `try_command` no cambié nada. El llamado a echidna se está haciendo directamente desde `valid_combinations`.

- El tema es que con verisol, se hace una corrida de la tool por cada función a testear, pero yo no necesito eso. 
Preguntar si eso lo hace por un tema de la tool en sí o porque es más fácil procesar el output para saber qué test falló y eso.

- Falta hacer una función que recorra el output de echidna y se fije qué tests fueron los que fallaron, que es parecido a lo que hace try_command y try_transaction.