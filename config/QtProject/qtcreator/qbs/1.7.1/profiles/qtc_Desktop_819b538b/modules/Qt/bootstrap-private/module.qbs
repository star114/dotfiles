import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Bootstrap"
    Depends { name: "Qt"; submodules: []}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["z"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["Foundation", "CoreServices"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Bootstrap"
    libNameForLinkerRelease: "Qt5Bootstrap"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/libQt5Bootstrap.a"
    cpp.defines: ["QT_BOOTSTRAP_LIB", "QT_VERSION_STR=\\'\\\"5.8.0\\\"\\'", "QT_VERSION_MAJOR=5", "QT_VERSION_MINOR=8", "QT_VERSION_PATCH=0", "QT_BOOTSTRAPPED", "QT_NO_CAST_TO_ASCII"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/include", "/usr/local/Cellar/qt/5.8.0_2/include/QtCore", "/usr/local/Cellar/qt/5.8.0_2/include/QtCore/5.8.0", "/usr/local/Cellar/qt/5.8.0_2/include/QtCore/5.8.0/QtCore", "/usr/local/Cellar/qt/5.8.0_2/include/QtXml", "/usr/local/Cellar/qt/5.8.0_2/include/QtXml/5.8.0", "/usr/local/Cellar/qt/5.8.0_2/include/QtXml/5.8.0/QtXml"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
