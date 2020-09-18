import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

Rectangle {
    color: 'black'
    TextField {
        placeholderText: qsTr("搜索单词")
        anchors.centerIn: parent
    }
}
