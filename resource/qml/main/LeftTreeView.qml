import QtQuick 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import hvoigt.net 1.0
import '../components'

Item {

    TreeView {
        anchors.fill: parent
        model: theModel
        headerVisible: false
        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff
        verticalScrollBarPolicy: Qt.ScrollBarAlwaysOn

        style: TableViewStyle {
            frame: Rectangle {
                border.width: 0
            }
        }

        itemDelegate: Text {
            anchors.fill: parent
            color: '#333333'
            elide: Qt.ElideRight
            text: styleData.value.text
        }

        TableViewColumn {
            movable: false
            resizable: false
            role: "title"
        }
    }
}
