#include <iostream>

using namespace std;

/**
 * Intuition:
 * - There will be two numbers that can reach n (n-1 and n-2).
 * - Each of those has their own distinct ways.
 * - I realized I don't need to store everything, just the last two variables.
 * - If I use n-2 + n-1 logic, I can just add from there on using a simple counter.
 */

class Solution {
public:
    int climbStairs(int n) {
        if (n <= 2) {
            return n;
        }
        
        int paths = 0;
        int oneback = 1;
        int twoback = 2;
        int i = 3;
        
        while(i <= n) {
            paths = oneback + twoback;
            
            oneback = twoback;
            twoback = paths;
            i++;
        }
        return paths;
    }
};
