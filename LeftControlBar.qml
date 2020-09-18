import QtQuick 2.0
import QtQuick.Layouts 1.3


Rectangle {
    width: 60
    color: '#33373B'

    Column {

        anchors.fill: parent


        Rectangle {
            id: avatar
            border.color: 'blue'
            color: 'transparent'
            height: 50
            width: parent.width
            anchors.topMargin: 10

            Text {

                anchors.centerIn: parent

                wrapMode: Text.WordWrap
                text: qsTr("头像")
                color: 'white'

            }
        }

        ColumnLayout {
            id: bottom_setting
    //        anchors.top: toolbar.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            spacing: 0
            Rectangle {
                x: 0
                y: 20
                color: 'green'
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Text {
                    text: qsTr("工具")
                    anchors.centerIn: parent
                    color: 'white'
                }
            }

            Rectangle {
                color: 'black'
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Text {
                    text: qsTr("工具")
                    anchors.centerIn: parent
                    color: 'white'
                }
            }
        }

        ColumnLayout {
            id: toolbar
            anchors.top: avatar.bottom
            anchors.bottom: bottom_setting.top
            anchors.left: parent.left
            anchors.right: parent.right

            spacing: 0
//            Rectangle {
//                x: 0
//                y: 20
//                color: 'yellow'
//                Layout.fillWidth: true
//                Layout.preferredHeight: 50
//            }

//            LeftControlBarLine {}

            Rectangle {
                Text {
                    text: qsTr("词典")
                    anchors.centerIn: parent
                    color: 'white'
                }
                color: 'transparent'
                border.color: 'blue'

                Layout.fillWidth: true
                Layout.preferredHeight: 50
            }

            LeftControlBarLine {}



            Rectangle {
                Text {
                    text: qsTr("百科")
                    anchors.centerIn: parent
                    color: 'white'
                }
                color: 'transparent'
                border.color: 'blue'

                Layout.fillWidth: true
                Layout.preferredHeight: 50
            }

            LeftControlBarLine {}

            Rectangle {
                Text {
                    text: qsTr("学习")
                    anchors.centerIn: parent
                    color: 'white'
                }
                color: 'transparent'
                border.color: 'blue'

                Layout.fillWidth: true
                Layout.preferredHeight: 50
            }

            LeftControlBarLine {}

            Rectangle {
                Text {
                    text: qsTr("翻译")
                    anchors.centerIn: parent
                    color: 'white'
                }
                color: 'transparent'
                border.color: 'blue'

                Layout.fillWidth: true
                Layout.preferredHeight: 50
            }

            LeftControlBarLine {}

            Rectangle {
                Text {
                    text: qsTr("词库")
                    anchors.centerIn: parent
                    color: 'white'
                }
                color: 'transparent'
                border.color: 'blue'

                Layout.fillWidth: true
                Layout.preferredHeight: 50
            }
        }
    }
}


