import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "MultimediaQuick_p"
    Depends { name: "Qt"; submodules: ["core", "quick", "multimedia-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: ["QtQuick", "QtGui", "QtCore", "DiskArbitration", "IOKit", "QtQml", "QtNetwork", "QtMultimedia"]
    frameworkPathsDebug: []
    frameworkPathsRelease: ["/usr/local/Cellar/qt/5.8.0_2/lib", "/usr/local/Cellar/qt/5.8.0_2/lib", "/usr/local/Cellar/qt/5.8.0_2/lib"]
    libNameForLinkerDebug: "QtMultimediaQuick_p"
    libNameForLinkerRelease: "QtMultimediaQuick_p"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/QtMultimediaQuick_p.framework/QtMultimediaQuick_p"
    cpp.defines: ["QT_QTMULTIMEDIAQUICKTOOLS_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/lib/QtMultimediaQuick_p.framework/Headers", "/usr/local/Cellar/qt/5.8.0_2/lib/QtMultimediaQuick_p.framework/Headers/5.8.0", "/usr/local/Cellar/qt/5.8.0_2/lib/QtMultimediaQuick_p.framework/Headers/5.8.0/QtMultimediaQuick_p"]
    cpp.libraryPaths: []
    
}
