#include <bits/stdc++.h>

namespace Brut
{
    using namespace std;

    ifstream in;
    ofstream out;

    int main()
    {
        in = ifstream("problema.in");
        out = ofstream("brut.out");

        // cod =================================================
        int N;
        in >> N;

        bool ok = false;

        int cnt = 1;
        while (cnt <= N) {
            if (cnt == N) {
                ok = true;
            }

            cnt += 2;
        }

        if (ok) {
            out << 1 << '\n';
        } else {
            out << 0 << '\n';
        }

        // ATENTIE: Sa nu uiti sa inchizi fisierele
        in.close();
        out.close();

        return 0;
    }
}