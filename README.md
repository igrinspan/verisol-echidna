# verisol-echidna

### Para correr el script de python (desde scripts)
```
    python3 Tesis.py CrowdfundingTimeBalanceConfig  -echidna 50000
```



(Hay un path absoluto ahí adentro, hay que cambiarlo).

#### Comando de echidna para correr un contrato y que devuelva directamente por consola
Podemos ignorar la config file y directamente poner los valores de cada configuración dentro del comando. Tipo:

```
    echidna ./Contracts/ContractFile.sol --contract ContractToTest --test-mode assertion --format 'text' --test-limit 50000 --shrink-limit 0
```

El `--format 'text'` hace que no imprima la interfaz interactiva, sino que devuelve los resultados directamente por consola.

En algunos casos nos sirve variar también el maxValue y el balanceContract, (maxValue: 100, balanceContract: 0)

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