import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "TextToSpeech"
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
    libNameForLinkerDebug: "QtTextToSpeech"
    libNameForLinkerRelease: "QtTextToSpeech"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/local/Cellar/qt/5.8.0_2/lib/QtTextToSpeech.framework/QtTextToSpeech"
    cpp.defines: ["QT_TEXTTOSPEECH_LIB"]
    cpp.includePaths: ["/usr/local/Cellar/qt/5.8.0_2/lib/QtTextToSpeech.framework/Headers"]
    cpp.libraryPaths: []
    
}
