# What does this do?
lvm-protect is an open-source obfuscation device that was made by SmartNode#1211 and is partially-functional.

# What is broken about this?
As this provides excellent beginner obfuscation, the main problem with this obfuscator is that it doesn't work for larger scripts (and has issues with more than simple loop) which hopefully maybe someday someone is able to apply fixes to this.

# How do I use it?
- Place your code in 'code.lua'
- Run 'obfuscate.bat'
- Wait until the console prints 'Finished :)'
- Go to 'output/output.txt' for your results

# Features:
- Constant obfuscation (by serialization and deserialization)
- Number obfuscation (by custom 'luamin' protocol; toMath() function)
- Uses 'FiOne' from @Rerumu (a modern lua vm that hasn't been widely used before)

# Problems:
- Uses luac bytecode (can be read by unluac)
- Corruption somewhere in one of the instructions (i don't want to fix it lol)
- Super lengthy (due to the serialization and deserialization function, including variable names)
