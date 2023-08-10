package lcp

// leet code link: https://leetcode.com/problems/longest-common-prefix/

import "core:fmt"
import s "core:strings"
import "core:slice"

lcp :: proc() {
  //input : []string = {"flower", "flow", "flight"} // Expected: "fl"
  //input : []string = {"dog", "racecar", "car"} // Expected: "" 
  input : []string = {"repost", "report", "reposte", "reportoir"} // Expected: "repo"
  ret : string

  fmt.println("Input Data:: ", input)

  slice.sort_by(input[:], proc(x, y: string) -> bool{ return len(x) < len(y)} )
  for i := 1; i < len(input); i += 1 {
    for c := 0; c < len(input[i]) + 1; c += 1 {
      if s.has_prefix(input[i-1], input[i][:c]) {
        ret = input[i][:c]
      }
    }
  }
  fmt.println("Result:: ", ret)
}

