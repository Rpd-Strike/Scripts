#include <bits/stdc++.h>

namespace Checker
{
    using namespace std;

    // fisierul original de intrare
    ifstream in;
    // solutia brut
    ifstream brut_in;
    // solutia ta
    ifstream sol_in;

    int main_file_check()
    {
        in = ifstream("problema.in");
        brut_in = ifstream("brut.out");
        sol_in = ifstream("problema.out");

        // poate ai nevoie de datele de intrare
        int N;
        in >> N;

        // citesti ce a facut solutia ta / ambele solutii (dupa caz)
        int brut, sol;
        brut_in >> brut;
        sol_in >> sol;

        // verifici daca e ok
        int is_test_ok = 0;

        if (brut == sol) {
            is_test_ok = 1;
        }

        // ATENTIE: Sa nu uiti sa inchizi fisierele
        in.close();
        brut_in.close();
        sol_in.close();

        return is_test_ok;
    }

    int main_smart_check()
    {
        in = ifstream("problema.in");
        sol_in = ifstream("problema.out");

        // citesti input daca e nevoie
        int N;
        in >> N;

        // citesti solutia ta
        int sol;
        sol_in >> sol;

        int brut = N % 2;

        // verifici daca e ok
        int is_test_ok = 0;

        if (brut == sol) {
            is_test_ok = 1;
        }

        // ATENTIE: Sa nu uiti sa inchizi fisierele
        in.close();
        sol_in.close();

        return is_test_ok;
    }
}