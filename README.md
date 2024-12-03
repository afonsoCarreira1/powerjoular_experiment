## Orchestrators
There are 4 orchestrators (Java, Python, C, Bash), to run them execute a the following command:



    ./run.sh [j|p|c|b] [file name] [optional t to run c program or f to run Java program] [optional run n times]
    
- [j|p|c|b] is the orchestrator to use
- [file name] is the target program
- [optional t to run c program or f to run Java program] Insert a t to run the target program written in C or f to run the target program written in Java
- [optional run n times] The number of times the process runs, default is 1

Example:

    ./run.sh j Fib
    ./run.sh j Fib f 1

 
## GraphDisplay.py
This file runs the powerjoular files stored in 4orch_fib or matrixMulFiles.

To run:


    python3 GraphDisplay.py dir programName j|c
    
- dir is the directory where the files are stored
- programName is the name of the program, for the moment only 2 options exist (Fib/MatrixMult)
- j|c is to choose the language of the program


Example:

    python3 GraphDisplay.py 4orch_fib Fib j

Plots the files from the 4orch_fib dir which are power values of the Fibonacci program writen in java

<img src="https://i.ibb.co/RYPgrLQ/Screenshot-from-2024-11-08-14-09-14.png" alt="Screenshot-from-2024-11-08-14-09-14" border="0" width="60%">
