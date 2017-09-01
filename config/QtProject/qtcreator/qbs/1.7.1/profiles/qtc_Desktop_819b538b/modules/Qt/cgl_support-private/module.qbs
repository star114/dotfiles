import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "CglSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "AppKit", "OpenGL", "AGL"]
    frameworkPathsDebug: []
    frameworkPathsRelease: ["/usr/local/Cellar/qt/5.8.0_2/lib"]
    libNameForLinkerDebug: "Qt5CglSupport"
    libNameForLinkerRelease: "Qt5CglSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/libQt5CglSupport.a"
    cpp.defines: ["QT_CGL_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/include", "/usr/local/Cellar/qt/5.8.0_2/include/QtCglSupport", "/usr/local/Cellar/qt/5.8.0_2/include/QtCglSupport/5.8.0", "/usr/local/Cellar/qt/5.8.0_2/include/QtCglSupport/5.8.0/QtCglSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
