import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickTest"
    Depends { name: "Qt"; submodules: ["core", "testlib", "widgets"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["QtTest", "Security", "Foundation", "ApplicationServices", "IOKit", "QtCore", "DiskArbitration", "QtWidgets", "QtGui"]
    frameworkPathsDebug: []
    frameworkPathsRelease: ["/usr/local/Cellar/qt/5.8.0_2/lib", "/usr/local/Cellar/qt/5.8.0_2/lib"]
    libNameForLinkerDebug: "QtQuickTest"
    libNameForLinkerRelease: "QtQuickTest"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/QtQuickTest.framework/QtQuickTest"
    cpp.defines: ["QT_QMLTEST_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/lib/QtQuickTest.framework/Headers"]
    cpp.libraryPaths: []
    
}
