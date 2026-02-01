#include <vector>
#include <algorithm>

using namespace std;

/**
 * - Intuition: Greedy strategy (Implicit BFS) to determine minimum jumps in O(N) time.
*/

class Solution {
public:
    int jump(vector<int>& nums) {
        if (nums.size() <= 1) {
            return 0;
        }
        
        int reach = 0;
        int spot = 0;
        int jumps = 0;
        
        for(int i = 0; i < nums.size() - 1; i++) {
            reach = max(reach, i + nums[i]);
            
            if(i == spot) {
                jumps++;
                spot = reach;
            }
        }
        return jumps;
    }
};
