#!/bin/bash

#pythonOrJava="${1:-"j"}"
filename="${2:-"Fib"}"
runCProgram="${3:-"f"}"
numberOfRuns="${4:-"1"}"

sudo rm powerjoular.*
    sudo gcc c_progs/"$2".c -o c_progs/"$2"
    sudo gcc OrchestratorC.c -o OrchestratorC
    
    # Compile Java program (name provided as second argument, e.g., MyRunner.java)
    sudo javac java_progs/"$2".java #2>/dev/null
    sudo javac -XDignore.symbol.file Runner.java #2>/dev/null
    if [ "$1" == "j" ]; then
        sudo java Runner $filename $runCProgram $numberOfRuns
    elif [ "$1" == "p" ]; then
        sudo python3 Pyrun.py $filename $runCProgram $numberOfRuns
    elif [ "$1" == "b" ]; then
        sudo ./OrchestratorBash.sh $filename $runCProgram $numberOfRuns
    elif [ "$1" == "c" ]; then
        if [ "$3" == "f" ]; then
            runCProgram=0
        elif [ "$3" == "t" ]; then
            runCProgram=1
        fi
        sudo ./OrchestratorC $filename $runCProgram $numberOfRuns
    else
    # If neither "j" nor "p" is provided, display a usage message
    echo "Usage: $0 [j|p|c|b] [file name] [optional t to run c program or f to run Java program] [optional run n times]"
    echo "j - Use Java orchestrator"
    echo "p - Use Python orchestrator"
    echo "c - Use C orchestrator"
    echo "b - Use Bash orchestrator"
fi