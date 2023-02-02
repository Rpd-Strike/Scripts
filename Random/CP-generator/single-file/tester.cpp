#include <bits/stdc++.h>

// Random =============================================================================================================

namespace Random
{
    using namespace std;

    std::random_device dev;
    std::mt19937 rng(dev());
    std::uniform_int_distribution<std::mt19937::result_type> dist(1,6); // distribution in range [1, 6]

    void set_rand_limits(int a, int b)
    {
        dist = std::uniform_int_distribution<std::mt19937::result_type>(a, b);
    }

    int get_rand()
    {
        return dist(rng);
    }

    int getOneWithProb(int ok_under, int total)
    {
        if (total != (int)dist.max()) {
            set_rand_limits(1, total);
        }

        int x = get_rand();
        return x <= ok_under;
    }
}

// Brut ==============================================================================================================

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

// Solutie ============================================================================================================

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

// Generator ==========================================================================================================

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

// Checker ============================================================================================

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



// Tester =============================================================================================================

namespace Tester
{
    using namespace std;

    const int TEST_MAX = 1e3;

    int verifica_test()
    {
        const int USE_SMART_CHECK = 0;

        if (USE_SMART_CHECK)
            return Checker::main_smart_check();
        
        else
            return Checker::main_file_check();
    }

    int main()
    {
        int test_nr = 1;

        while (test_nr <= TEST_MAX) {
            if (test_nr % 100 == 0)
                cout << "Running test nr: " << test_nr << '\n';
            
            // genereaza un test
            // aici poti sa ai diferite strategii de generare, ce dai ca parametru / ce e random
            Generator::main(test_nr);
            test_nr += 1;
            // cout << "done generator\n";

            // ruleaza solutia ta
            Solutie::main();
            // cout << "done solutie\n";

            // ruleaza solutia brut
            Brut::main();
            // cout << "done brut\n";

            // verifica daca e ok
            if (!verifica_test()) {
                // daca nu e ok, iese din program
                cout << "Hopa, ceva nu a mers bine, verifica testul!!\n";

                return 0;
            }
        }

        cout << "Bravo! Esti un adevarat programator! \n  (Sau poate nu ai rulat testerul de ajuns...)\n";

        return 0;
    }
}

// main ===============================================================================================================

int main()
{
    return Tester::main();
}