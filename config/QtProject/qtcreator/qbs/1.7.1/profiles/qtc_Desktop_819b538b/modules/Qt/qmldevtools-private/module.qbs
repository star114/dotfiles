import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDevTools"
    Depends { name: "Qt"; submodules: ["core-private"]}

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
    frameworkPathsRelease: ["$$[QT_HOST_LIBS]"]
    libNameForLinkerDebug: "Qt5QmlDevTools"
    libNameForLinkerRelease: "Qt5QmlDevTools"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/libQt5QmlDevTools.a"
    cpp.defines: ["QT_QMLDEVTOOLS_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/include", "/usr/local/Cellar/qt/5.8.0_2/include/QtQmlDevTools", "/usr/local/Cellar/qt/5.8.0_2/include/QtQmlDevTools/5.8.0", "/usr/local/Cellar/qt/5.8.0_2/include/QtQmlDevTools/5.8.0/QtQmlDevTools"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
