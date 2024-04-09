#include "llvm/TargetParser/Triple.h"
#include "llvm/ExecutionEngine/Orc/LLJIT.h"
#include "llvm/ExecutionEngine/Orc/ThreadSafeModule.h"
#include "llvm/ExecutionEngine/SectionMemoryManager.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Target/TargetOptions.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/ADT/StringMap.h"
#include "llvm/ExecutionEngine/Orc/DebugUtils.h"
#include "llvm/ExecutionEngine/Orc/ObjectTransformLayer.h"
#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/TargetParser/Host.h"
#include <iostream>
#include <memory>

#include "../ExampleModules.h"

using namespace llvm;
using namespace llvm::orc;

ExitOnError ExitOnErr;
int main(int argc,char *argv[]){
    // initialize LLVM
    InitLLVM X(argc,argv);
    
    llvm::InitializeNativeTarget();
    llvm::InitializeNativeTargetAsmPrinter();

    // create LLJITBuilder instance
    LLJITBuilder Builder;

    // set JITTargetMachineBuilder
    if (auto JTMB = JITTargetMachineBuilder::detectHost()) {
        // 修改JITTargetMachineBuilder的选项
        JTMB->getOptions().EmulatedTLS = false;
        JTMB->getOptions().EmitAddrsig = true;
        Builder.setJITTargetMachineBuilder(std::move(*JTMB));
    } else {
        // handle error
        return 1;
    }

    auto J = ExitOnErr(Builder.create());

    auto M = ExitOnErr(parseExampleModuleFromFile("aliasTest/aliasTest.ll"));


    ExitOnErr(J->addIRModule(std::move(M)));
    
    ExitOnErr(J->initialize(J->getMainJITDylib()));
    auto AddrOfMain = ExitOnErr(J->lookup("main"));
    int (*ExecuteAddrOfMain)() = AddrOfMain.toPtr<int()>();
    int result = ExecuteAddrOfMain();
    ExitOnErr(J->deinitialize(J->getMainJITDylib()));
    outs() << "Load bitcode file successful!" << "\n";
    // outs() << "Exit:" << result << "\n";
    return 0;
    
}
