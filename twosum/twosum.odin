package twosum

import "core:fmt"
import "core:sort"

twosum :: proc() {
  input : [dynamic]int = {-1,-2,-3,-4,-5}
  target := -8
  ret := sumCheck(input[:], target)
  fmt.println(ret)
}

@(private="file")
sumCheck:: proc(arr: []int, target: int) -> (ret: [2]int) {
  for i := 0; i < len(arr); i += 1 {
    for j := i; j < len(arr); j += 1 {
      if (arr[i] + arr[j] == target) && i != j {
        ret[0], ret[1] = i, j
      }
    }
  }
  sort.quick_sort(ret[:]) // Not neccessary, but i like having the return sorted
  return
}
