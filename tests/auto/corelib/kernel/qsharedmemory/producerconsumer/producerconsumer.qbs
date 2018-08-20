import qbs

QtAutotestHelperApp {
    targetName: "producerconsumer_helper"
    condition: base && !targetsUWP && Qt.core.config.sharedmemory
               && Qt.global.privateConfig.private_tests && !qbs.targetOS.contains("android")
    consoleApplication: true
    installSuffix: ""

    Depends { name: "Qt.core" }
    Depends { name: "Qt.testlib" }

    files: "main.cpp"
}