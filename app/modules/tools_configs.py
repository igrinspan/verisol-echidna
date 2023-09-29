from dataclasses import dataclass

@dataclass
class EchidnaConfigData:
    # La inicializo con los parámetros por default (menos testMode y shrinkLimit). 
    testLimit: int = 50000
    balanceContract: int = 0
    workers: int = 1
    maxValue: int = 100000000000000000000
    testMode: str = "assertion"
    format: str = "Null"
    shrinkLimit: int = 0
    seqLen: int = 100 


@dataclass
class VerisolConfigData:
    txBound: int 
    time_out: int
