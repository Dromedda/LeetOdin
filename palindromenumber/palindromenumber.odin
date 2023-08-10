package palindromenumber

// leetcode link: https://leetcode.com/problems/palindrome-number/

import "core:slice"
import "core:fmt"

pa :: proc() {
  //input : int = 121 
  //input : int = 3210123 
  input : int = 9832892123127
  //input : int = -323
  comps : [dynamic]int
  res : [dynamic]int  

  fmt.println("Input Integer:: ", input)

  if (input < 0) { 
    fmt.println("False")
    return 
  }

  for (input > 0) { 
    d := input % 10
    append(&comps, d)
    append(&res, 0)
    input = input / 10
  }

  res = slice.clone_to_dynamic(comps[:])
  slice.reverse(comps[:])

  if (len(comps) == len(res)) { 
    for i := 0; i < len(comps); i += 1 {
      if (res[i] != comps[i]) {
        fmt.println("False")
        return
      }
    }
  } else {
      fmt.println("False")
      return
  }
  
  fmt.println("True")
}
