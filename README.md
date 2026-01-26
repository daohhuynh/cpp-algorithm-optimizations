# cpp-algorithm-optimizations

My collection of C++ solutions for algorithmic problems. I focus on logic changes that cut down runtime and memory usage, rather than just solving the problem.

## Optimization Logs

### 1. Palindrome Pairs
* **The Logic:** Originally, I was cutting substrings and checking them immediately. This was too slow.
* **The Fix:** I changed the logic to validate if a string is a "candidate" first *before* doing the expensive work (reversing and checking).
* **Result:** Runtime dropped by 1412 ms. I also cached the iterator to stop calling the hashmap repeatedly.

### 2. Jump Game (Greedy)
* **The Logic:** Instead of a complex DP array, I treated "reach" like fuel.
* **The Fix:** I have a variable `reach` that decreases by 1 as I move. If a new spot gives me more reach, I update it.
* **Result:** Reduced Space Complexity to **O(1)**. I win if I reach the end, I lose if reach hits 0 at a 0-value index.

### 3. Jump Game II (Minimum Jumps)
* **The Logic:** Similar to the first one, but I need the *minimum* number of jumps.
* **The Fix:** I track a `spot` variable that marks the end of my current jump range. Every time I hit that spot, I am forced to jump, so I increment the counter and update the spot to my new max reach.
* **Result:** Solved in **O(N)** single pass, avoiding nested loops.

### 4. Min Pair Sum
* **The Logic:** Simple two-pointer approach (biggest + smallest), but the input size was huge.
* **The Fix:** Added `ios_base::sync_with_stdio(false)` and `cin.tie(NULL)` to stop the buffer from flushing constantly.
* **Result:** Runtime dropped by 50 ms.

## Tools Used
* **C++ STL:** `unordered_map`, `vector`, `sort`.
* **Techniques:** Two Pointers, Greedy Logic, Input/Output Optimization.
