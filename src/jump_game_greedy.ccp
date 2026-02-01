#include <vector>
#include <iostream>

using namespace std;

//I win if there is 1 element. I lose if 0 is the first element.
//I need to have a variable that measures and replaces the best "reach".
//As I go, reach decreases by 1 and I keep checking if each element gives me a further reach.
//Once something gives me a further reach, I adopt that as the next reach.
//My win condition is when my cycling through gets me to the end point.
//If reach becomes 0 && my nums at index is also 0 then I return false.

class Solution {
public:
    bool canJump(vector<int>& nums) {
        if (nums.size() == 1) {
            return true;
        }
        if (nums[0] == 0) {
            return false;
        }
        
        int reach = 0;
        
        for(int i = 0; i < nums.size() - 1; i++) {
            if(nums[i] > reach) {
                reach = nums[i];
            }
            if(i + reach >= nums.size() - 1) {
                return true;
            }
            if(nums[i] == 0 && reach == 0) {
                return false;
            }
            reach--;
        }
        return true;
    }
};
