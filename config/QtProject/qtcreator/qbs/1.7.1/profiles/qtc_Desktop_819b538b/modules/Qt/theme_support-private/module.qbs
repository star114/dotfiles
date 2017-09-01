import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "ThemeSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "OpenGL", "AGL"]
    frameworkPathsDebug: []
    frameworkPathsRelease: ["/usr/local/Cellar/qt/5.8.0_2/lib"]
    libNameForLinkerDebug: "Qt5ThemeSupport"
    libNameForLinkerRelease: "Qt5ThemeSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/libQt5ThemeSupport.a"
    cpp.defines: ["QT_THEME_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/include", "/usr/local/Cellar/qt/5.8.0_2/include/QtThemeSupport", "/usr/local/Cellar/qt/5.8.0_2/include/QtThemeSupport/5.8.0", "/usr/local/Cellar/qt/5.8.0_2/include/QtThemeSupport/5.8.0/QtThemeSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
}
