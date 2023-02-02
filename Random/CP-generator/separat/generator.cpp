#include <bits/stdc++.h>

namespace Generator
{
    using namespace std;

    ofstream out;

    // ca argument pune pe ce vrei sa se bazeze testul.
    // N, K, numar muchii, etc.
    // in cazul asta rank este doar al catelea test generat este
    int main(int rank)
    {
        out = ofstream("problema.in");

        out << rank * 123 << '\n';


        // ATENTIE: Sa nu uiti sa inchizi fisierele
        out.close();

        return 0;
    }
}