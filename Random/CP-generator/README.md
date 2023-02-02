# Generator si Tester automat

Aceeasi implementare pentru generator & tester in doua moduri: 

- `separat`: Modular pe fisiere (dar fara headere deci includem direct cpp si daca nu avem grija putem avea double declaration)
- `single-file`: Un singur fisier

## How to use

- Pentru modul `separat`: Compilati doar fisierul `tester.cpp` deoarece asta include direct celelalte cpp-uri
- Pentru modul `single-file`: Compilati fisierul `tester.cpp`

Pentru a afla care e smecheria cu cpp / header files: [Link](https://stackoverflow.com/questions/333889/why-have-header-files-and-cpp-files)

# Enunt

Se citeste un numar N. Sa se afiseze daca este impar sau nu. (1 pentru impar, 0 pentru par)