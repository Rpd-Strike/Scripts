#include <bits/stdc++.h>

#include "solutie.cpp"
#include "generator.cpp"
#include "brut.cpp"
#include "checker.cpp"

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

int main()
{
    return Tester::main();
}