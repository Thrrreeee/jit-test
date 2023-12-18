#include "llvm/ADT/StringMap.h"
#include "llvm/ExecutionEngine/Orc/DebugUtils.h"
#include "llvm/ExecutionEngine/Orc/LLJIT.h"
#include "llvm/ExecutionEngine/Orc/ObjectTransformLayer.h"
#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"

#include "../ExampleModules.h"

using namespace llvm;
using namespace llvm::orc;

ExitOnError ExitOnErr;

int main(int argc,char *argv[]){
    InitLLVM X(argc,argv);
    
    InitializeNativeTarget();
    InitializeNativeTargetAsmPrinter();
    cl::ParseCommandLineOptions(argc, argv,"TestReadBitCode");
    ExitOnErr.setBanner(std::string(argv[0]) + ":");

    auto J = ExitOnErr(LLJITBuilder().create());
    std::string DyLibPath = "/home/jinrui/coremark_pro_x86tox86/va_listHelperFunc.so";
    if (llvm::sys::DynamicLibrary::LoadLibraryPermanently(DyLibPath.c_str())) {
        outs() << "无法加载 " << DyLibPath << "\n";
        return 1;
    }
    // auto M = ExitOnErr(parseExampleModuleFromFile("/home/jinrui/coremark_pro_x86tox86/maze_noThread.ll"));
    auto M = ExitOnErr(parseExampleModuleFromFile("/home/jinrui/coremark_pro_x86tox86/Thread-test/tls-cpp.ll"));
    ExitOnErr(J->addIRModule(std::move(M)));
    outs() << "Load bitcode file successful!" << "\n";

    ExitOnErr(J->initialize(J->getMainJITDylib()));
    outs() << "Initialize JIT successful!" << "\n";
    auto AddrOfMain = ExitOnErr(J->lookup("main"));
    int (*ExecuteAddrOfMain)() = AddrOfMain.toPtr<int()>();
    int result = ExecuteAddrOfMain();
    ExitOnErr(J->deinitialize(J->getMainJITDylib()));
    
    outs() << "sucessful execution!" << "\n";
    // outs() << "Exit:" << result << "\n";
    return 0;
}
