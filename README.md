# verisol-echidna

### Para correr el script de python (desde scripts)
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