TARGET = ru.r7office.documents

QT += quick \
    network \

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    rpm/ru.r7office.documents.spec \
    AUTHORS.md \
    CODE_OF_CONDUCT.md \
    CONTRIBUTING.md \
    LICENSE.BSD-3-Clause.md \
    README.md \
    README.ru.md \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.r7office.documents.ts \
    translations/ru.r7office.documents-ru.ts \

RESOURCES += \
    qml.qrc

message(PREFIX $${PREFIX})

bin.files += \
    $${TARGET}
bin.path = $${PREFIX}/usr/bin

desktop.files += \
    $${TARGET}.desktop
desktop.path = $${PREFIX}/usr/share/applications

icons86.files += icons/86x86/*
icons86.path = $${PREFIX}/usr/share/icons/hicolor/86x86/apps
icons108.files += icons/108x108/*
icons108.path = $${PREFIX}/usr/share/icons/hicolor/108x108/apps
icons128.files += icons/128x128/*
icons128.path = $${PREFIX}/usr/share/icons/hicolor/128x128/apps
icons172.files += icons/172x172/*
icons172.path = $${PREFIX}/usr/share/icons/hicolor/172x172/apps
icons_scalable.files += icons/scalable/*
icons_scalable.path = $${PREFIX}/usr/share/icons/hicolor/scalable/apps

INSTALLS += \
    bin \
    desktop \
    icons86 \
    icons108 \
    icons128 \
    icons172 \
    icons_scalable \

