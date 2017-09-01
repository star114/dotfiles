import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "CLucene"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["QtCore", "DiskArbitration", "IOKit"]
    frameworkPathsDebug: []
    frameworkPathsRelease: ["/usr/local/Cellar/qt/5.8.0_2/lib"]
    libNameForLinkerDebug: "QtCLucene"
    libNameForLinkerRelease: "QtCLucene"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/QtCLucene.framework/QtCLucene"
    cpp.defines: ["QT_CLUCENE_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/lib/QtCLucene.framework/Headers", "/usr/local/Cellar/qt/5.8.0_2/lib/QtCLucene.framework/Headers/5.8.0", "/usr/local/Cellar/qt/5.8.0_2/lib/QtCLucene.framework/Headers/5.8.0/QtCLucene"]
    cpp.libraryPaths: []
    
}
