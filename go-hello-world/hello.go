package main

import (
    "syscall"
    "fmt"
    "strings"
)

func main() {
    var uname syscall.Utsname
    syscall.Uname(&uname)
    fmt.Println("hello world")

    fmt.Println(arrayToString(uname.Release))
    fmt.Println(arrayToString(uname.Sysname))
    fmt.Println(arrayToString(uname.Version))
    fmt.Println(arrayToString(uname.Machine))
}
 
func arrayToString(x [65]int8) string {
   var buf [65]byte
   for i, b := range x {
      buf[i] = byte(b)
   }
   str := string(buf[:])
   if i := strings.Index(str, "\x00"); i != -1 {
      str = str[:i]
   }
   return str
}
