# verisol-echidna

Debemos cambiar el path.

#### Comando de echidna para correr un contrato y que devuelva directamente por consola
Podemos ignorar la config file y directamente poner los valores de cada configuración dentro del comando. Tipo:

```
    echidna ./Contracts/ContractFile.sol --contract ContractToTest --test-mode assertion --format 'text' --test-limit 50000 --shrink-limit 0
```

El `--format 'text'` hace que no imprima la interfaz interactiva, sino que devuelve los resultados directamente por consola.
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
