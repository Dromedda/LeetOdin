package lmia 

// leet code link: https://leetcode.com/problems/longest-mountain-in-array/

import "core:fmt"

lmia :: proc() {
  //data : []int = {2,1,4,7,3,2,5} // Expected: 5
  //data : []int = {2,2,2} // Expected: 0
  data : []int = {1,2,3,4,5,4,2,2,1} // Expected: 7
  //data : []int = {1,2} // Expected: Err
  fmt.println("Input Data:: ", data)
  res:int 

  if len(data) < 3 { fmt.println("Data is not long enough to create a mountain"); return }

  for i := 1; i < len(data)-1; i += 1 {
    len := 1
    for (data[i-1] < data[i]) {
      len += 1
      i += 1
    }
    if (len > 1) && (data[i-1] > data[i]) {
      for (data[i-1] > data[i]) {
        len += 1
        i += 1
      }
      i -= 1
      res = len
    }
  } 
  fmt.println("Result:: ", res)
}

