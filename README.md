# Nim
This repository is for exploring the nim programming language. 
(source: Nim in Action by )
* Relative to Game development - Nim allows you to specify the amount of time that should be spent collecting memory which
	is dope because we wouldn't want garbage collecting to slow down frame rendering because it has to go here and there to 
	collect memory. 
* Nim can used alongside slower programming languages such as python and ruby relative to performance critical components.
  In that you may want to program partially in nim and then where appropriate and partially in the slower language where applicable.
* Nim also shines in performance relative to I/O operations - such as reading files or sending data over a network.
* Its dope for web application development also. See Jester or xarax. Nim supports async.
* Nimble is nim's package manager.

## Core Features
* Metaprogramming.
* Style-Insenstivity.
* Static Type system with dynamic type features.
* Fast Compiliation to C.
* Different Garbage Collectors.
* Arrays are bound-checked at compile time, or a runtime when compile-time checks aren't possible, preventing both buffer overflows
  and buffer overreads.
* Pointer arithmetic isn't possible for 'ref types' as they are entirely managed by Nim's GC; this prevents issues such as dangling
  pointers and other memory issues related to managing memory manually.
* You can use existing C/C++ libraries by writing 'wrapper code' or use c2nim too which converts C/C++ header files to Nim code, which wrap those files.
* Supports compiling to Javascript and Objective-C (write IOS applications natively in Nim). Also Android apps by using C++ compiliation backend.
* Supports UFCS (Unified Function Call Syntax)::allows you to create procedures on existing objects externally without binding them to a class. Allows
  procedure calls to be chained.
