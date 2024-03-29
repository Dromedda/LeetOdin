package twosum

// leet code link: https://leetcode.com/problems/two-sum/

import "core:fmt"
import "core:slice"

twosum :: proc() {
  input : [dynamic]int = {-1,-2,-3,-4,-5}
  target := -8
  fmt.println("Input Data:: ", input, "\nTarget Value:: ", target)
  ret := sumCheck(input[:], target)
  fmt.println("Result::", ret)
}

@(private="file")
sumCheck:: proc(arr: []int, target: int) -> (ret: [2]int) {
  for i := 0; i < len(arr); i += 1 {
    for j := i + 1; j < len(arr); j += 1 {
      if (arr[i] + arr[j] == target) {
        ret[0], ret[1] = arr[i], arr[j]
      }
    }
  }
  slice.sort(ret[:]) // Not neccessary, but i like having the return sorted
  return
}
