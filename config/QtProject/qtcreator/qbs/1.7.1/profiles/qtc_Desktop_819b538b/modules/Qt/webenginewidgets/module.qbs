import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebEngineWidgets"
    Depends { name: "Qt"; submodules: ["core", "gui", "webenginecore", "widgets", "network", "quick", "printsupport"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["QtWebEngineCore", "QtQuick", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtQml", "QtNetwork", "QtWebChannel", "QtPositioning", "QtPrintSupport", "QtWidgets"]
    frameworkPathsDebug: []
    frameworkPathsRelease: ["/usr/local/Cellar/qt/5.8.0_2/lib", "/usr/local/Cellar/qt/5.8.0_2/lib", "/usr/local/Cellar/qt/5.8.0_2/lib", "/usr/local/Cellar/qt/5.8.0_2/lib", "/usr/local/Cellar/qt/5.8.0_2/lib"]
    libNameForLinkerDebug: "QtWebEngineWidgets"
    libNameForLinkerRelease: "QtWebEngineWidgets"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/QtWebEngineWidgets.framework/QtWebEngineWidgets"
    cpp.defines: ["QT_WEBENGINEWIDGETS_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/lib/QtWebEngineWidgets.framework/Headers"]
    cpp.libraryPaths: []
    
}
