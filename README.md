# cpp-algorithm-optimizations
Archive of optimized C++ solutions for algorithmic complexity problems. Focus on memory management and runtime optimization.
# cpp-algorithm-optimizations

My collection of C++ solutions for algorithmic problems. I focus on logic changes that cut down runtime and memory usage, rather than just solving the problem.

## Optimization Logs

### 1. Palindrome Pairs
* **The Logic:** Originally, I was cutting substrings and checking them immediately. This was too slow.
* **The Fix:** I changed the logic to validate if a string is a "candidate" first *before* doing the expensive work (reversing and checking).
* **Result:** Runtime dropped from **1400ms → 12ms**. I also cached the iterator to stop calling the hashmap repeatedly.

### 2. Jump Game (Greedy)
* **The Logic:** Instead of a complex DP array, I treated "reach" like fuel.
* **The Fix:** I have a variable `reach` that decreases by 1 as I move. If a new spot gives me more reach, I update it.
* **Result:** Reduced Space Complexity to **O(1)**. I win if I reach the end, I lose if reach hits 0 at a 0-value index.

### 3. Min Pair Sum
* **The Logic:** Simple two-pointer approach (biggest + smallest), but the input size was huge.
* **The Fix:** Added `ios_base::sync_with_stdio(false)` and `cin.tie(NULL)` to stop the buffer from flushing constantly.
* **Result:** Saved **~50ms** on the test cases.

## Tools Used
* **C++ STL:** `unordered_map`, `vector`, `sort`.
* **Techniques:** Two Pointers, Greedy Logic, Input/Output Optimization.
