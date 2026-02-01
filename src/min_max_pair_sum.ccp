#include <vector>
#include <algorithm>
#include <iostream>

using namespace std;

/**
 * - Strategy: Add biggest and smallest with a two pointer.
 * - Optimization Log: Disable C++ sync and untie streams for faster I/O (-50 ms).
 */

class Solution {
public:
    int minPairSum(vector<int>& nums) {
        ios_base::sync_with_stdio(false);
        cin.tie(NULL);
        
        sort(nums.begin(), nums.end());
        
        int big = 0;
        int pointer2 = nums.size();
        
        for(int i = 0; i < pointer2; i++) {
            if(nums[i] + nums[nums.size() - 1 - i] > big) {
                big = nums[i] + nums[nums.size() - 1 - i];
            }
            pointer2--;
        }
        return big;
    }
};
