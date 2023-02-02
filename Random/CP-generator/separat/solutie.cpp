#include <bits/stdc++.h>

#include "random.cpp"

// in namespace-ul asta este solutia ta "normala"
namespace Solutie 
{
    // lasa using namespace std; tot aici ca sa nu poluam
    // namespace-ul global
    using namespace std;

    // nu initializam in si out in scopul global
    // pentru a nu citi in acelasi timp cu generatorul / brutul
    ifstream in;
    ofstream out;

    // aici ai variabile globale ca in mod normal
    const int NMAX = 1e5 + 5;

    int main()
    {
        in = ifstream("problema.in");
        out = ofstream("problema.out");

        // cod =================================================

        int N;
        in >> N;

        out << N % 2 + Random::getOneWithProb(1, 1400) << '\n';

        // cod =================================================

        // ATENTIE: Sa nu uiti sa inchizi fisierele
        in.close();
        out.close();

        return 0;
    }
}