import itertools
import subprocess
import os
import sys
sys.path.append('')
sys.path.append('../verisol-test-main/')


def add_negation(fileNameTemp):
    inputfile = open(fileNameTemp, 'r').readlines()
    print(len(inputfile))
    write_file = open(fileNameTemp,'w')
    for line_idx in range(len(inputfile)):
        if 'function vc' in inputfile[line_idx]:
             print(inputfile[line_idx])
             print(inputfile[line_idx+1])
             inputfile[line_idx+1] = inputfile[line_idx+1].replace('return(', 'return(!(').replace(');', '));')
        write_file.write(inputfile[line_idx])
    write_file.close()

def remove_negation(fileNameTemp):
    inputfile = open(fileNameTemp, 'r').readlines()
    print(len(inputfile))
    write_file = open(fileNameTemp,'w')
    for line_idx in range(len(inputfile)):
        if 'function vc' in inputfile[line_idx]:
             print(inputfile[line_idx])
             print(inputfile[line_idx+1])
             inputfile[line_idx+1] = inputfile[line_idx+1].replace('return(!(', 'return(').replace(');', ';')
        write_file.write(inputfile[line_idx])
    write_file.close()

add_negation('combinations.sol')