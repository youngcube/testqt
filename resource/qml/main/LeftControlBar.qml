import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Rectangle {
    width: 60
    color: '#33373B'

    Column {

        anchors.fill: parent


        Item {
            height: 60
            width: parent.width
            id: avatar

            Button {
                anchors.topMargin: 10
                anchors.fill: parent
                checkable: false
                checked: false
                icon.source: "resource/image/sidebar_setting_icon@2x.png"


                Image {
                    anchors.fill: parent
                    source: "qrc:/resource/image/mnu_tool_voice_icon@2x.png"
                }

//                Text {
//                    anchors.centerIn: parent
//                    wrapMode: Text.WordWrap
//                    text: qsTr("头像")
//                    color: 'white'
//                }
            }
        }

        ColumnLayout {
            id: bottom_setting
    //        anchors.top: toolbar.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            spacing: 0
//            Rectangle {
//                x: 0
//                y: 20
//                color: 'green'
//                Layout.fillWidth: true
//                Layout.preferredHeight: 50
//                Text {
//                    text: qsTr("设置")
//                    anchors.centerIn: parent
//                    color: 'white'
//                }
//            }

            Image {
                x: 0
                y: 20
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                source: "qrc:/resource/image/sidebar_setting_icon@2x.png"
            }

            Rectangle {
                color: 'black'
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                Text {
                    text: qsTr("工具20")
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


