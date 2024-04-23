import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.15
import org.kde.kirigami 2.0 as Kirigami

Kirigami.ApplicationWindow {
    title: i18n("R7 Documents")

    pageStack.initialPage: "qrc:/qml/pages/MainPage.qml"
}
