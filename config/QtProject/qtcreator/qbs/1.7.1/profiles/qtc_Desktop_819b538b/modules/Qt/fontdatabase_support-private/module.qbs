import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "FontDatabaseSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["qtfreetype", "qtlibpng", "z"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["QtGui", "QtCore", "DiskArbitration", "IOKit", "ApplicationServices", "OpenGL", "AGL"]
    frameworkPathsDebug: []
    frameworkPathsRelease: ["/usr/local/Cellar/qt/5.8.0_2/lib"]
    libNameForLinkerDebug: "Qt5FontDatabaseSupport"
    libNameForLinkerRelease: "Qt5FontDatabaseSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/libQt5FontDatabaseSupport.a"
    cpp.defines: ["QT_FONTDATABASE_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/include", "/usr/local/Cellar/qt/5.8.0_2/include/QtFontDatabaseSupport", "/usr/local/Cellar/qt/5.8.0_2/include/QtFontDatabaseSupport/5.8.0", "/usr/local/Cellar/qt/5.8.0_2/include/QtFontDatabaseSupport/5.8.0/QtFontDatabaseSupport"]
    cpp.libraryPaths: ["/usr/local/Cellar/qt/5.8.0_2/lib"]
    isStaticLibrary: true
}
