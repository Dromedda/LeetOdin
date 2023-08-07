package main

import "core:fmt"
import "core:os"
import "twosum"

main :: proc() {
  if (len(os.args) < 2) {
    fmt.println("Please provide a problem to run")
    fmt.println("Example usage: ./LeetOdin.bin twosum")
    fmt.println("Available problems: \n  > twosum")
    return
  }

  if os.args[1] == "twosum" {
    twosum.twosum()
  }
}
