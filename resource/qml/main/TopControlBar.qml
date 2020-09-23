import QtQuick 2.0
import QtQuick.Layouts 1.3

Row {
    id: layout
    height: 60

    SearchBar {
        id: searchbar
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        anchors.leftMargin: 19
        anchors.rightMargin: 19

        width: 300
    }

    SystemBar {
        id: systembar
        anchors.right: parent.right
        width: 160
        height: parent.height
    }

    DictBar {
        anchors.left: searchbar.right
        anchors.right: systembar.left
        height: parent.height
    }
}
