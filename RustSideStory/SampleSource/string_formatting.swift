// Swift string interpolation is ok!

debugPrint(x) // CustomDebugStringConvertible protocol
print("\(x)") // CustomStringConvertible protocol
// Less elegant string formatting 
print("\(String(format: "0x%X", 3735928559))")
NSLog("0x%X", 3735928559) // Or you can use Foundation's NSLog
