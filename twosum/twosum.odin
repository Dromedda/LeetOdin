package twosum

import "core:fmt"
import "core:slice"

// Entry Point
twosum :: proc() {
  input : [dynamic]int = {-1,-2,-3,-4,-5}
  target := -8
  fmt.println("RUNNING TWOSUM USING INPUT::", input, "\nTARGET SUM :: ", target)
  fmt.println("EXPECTED RESULT:: [2, 4]")
  ret := sumCheck(input[:], target)
  fmt.println("RESULT::", ret)
}

@(private="file")
sumCheck:: proc(arr: []int, target: int) -> (ret: [2]int) {
  for i := 0; i < len(arr); i += 1 {
    for j := i + 1; j < len(arr); j += 1 {
      if (arr[i] + arr[j] == target) {
        ret[0], ret[1] = i, j
      }
    }
  }
  slice.sort(ret[:]) // Not neccessary, but i like having the return sorted
  return
}
