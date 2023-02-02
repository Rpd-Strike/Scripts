#include <bits/stdc++.h>

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