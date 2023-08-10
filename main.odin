package main

import "core:fmt"
import "core:os"
import "twosum"
import "lcp"
import "lmia"

main :: proc() {
  if (len(os.args) < 2) {
    fmt.println("Please provide a problem to run")
    fmt.println("Example usage: ./LeetOdin.bin twosum")
    fmt.println("Available problems: \n  > twosum\n  > lcp ( Longest Common Prefix )\n  > lmia ( Longest Mountain In Array )\n")
    return
  }

  if os.args[1] == "twosum" { twosum.twosum() }
  if os.args[1] == "lcp" { lcp.lcp() }
  if os.args[1] == "lmia" { lmia.lmia() }
}
