from dataclasses import dataclass

@dataclass
class EchidnaConfigFileData:
    testLimit: int = 50000
    balanceContract: int = 0
    workers: int = 1
    maxValue: int = 100000000000000000000
    testMode: str = 'assertion'
    prefix: str = 'echidna_'
    format: str = 'Null'
    shrinkLimit: int = 0
    seqLen: int = 100
  