# jit-test
My LLVM version is 18.0.0git. Here are my source code and the corresponding IR input file. The code is executable under the path `llvm/examples/OrcV2Examples`.

I used the commands `clang++ -S -emit-llvm tls.cpp -o tls-cpp.ll` and `clang -S -emit-llvm tls.c -o tls-c.ll` to compile the source code into LLVM IR form. However, to explore LLVM's handling of the `private thread_local(initialexec)` type, I will modify the type of the `threadLocalVar` variable to `private thread_local(initialexec)`. This operation can be accomplished through both static compilation and ORC JIT compilation.

I've noticed that if I debug at the `LowerToTLSEmulatedModel()`(https://github.com/llvm/llvm-project/blob/fc715e4cd942612a091097339841733757b53824/llvm/lib/CodeGen/SelectionDAG/TargetLowering.cpp#L9849) breakpoint, the IR file compiled from C++ triggers this breakpoint during `J->initialize(J->getMainJITDylib())`. However, for the IR file compiled from C, it triggers this breakpoint during `auto AddrOfMain = ExitOnErr(J->lookup('main'))`.

In the 'SBT' folder, there are my source code, input IR files, and error messages.From the error messages, it seems to be related to TLS variables, so I plan to use my own written example to study the ORCJIT's handling process of TLS variables.
