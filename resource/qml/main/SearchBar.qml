import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import '../components'

Item {

    RowLayout {

        anchors.leftMargin: 19
        anchors.rightMargin: 19
        anchors.fill: parent

        spacing: 26

        TextField {
            id: searchField
            placeholderText: qsTr('搜索单词')
            Layout.fillHeight: false
            Layout.fillWidth: true
            Layout.preferredHeight: 26

            background: Rectangle {
                border.color: 'transparent'
                color: '#EFEFF0'
            }

            Component.onCompleted: {
                appWindowTitleObjects.push(searchField)
            }
        }

        Row {
            CommonButton {
                id: prevButtonId
                width: 25
                height: 20
                Image {
                    width: 20
                    height: 15
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: 'qrc:/resource/image/mnu_tool_back_icon@2x.png'
                }

                Component.onCompleted: {
                    appWindowTitleObjects.push(prevButtonId)
                }
            }

            Item {
                width: 15
                height: parent.height
            }

            CommonButton {
                id: nextButtonId
                width: 25
                height: 20
                Image {
                    width: 20
                    height: 15
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: 'qrc:/resource/image/mnu_tool_forward_icon@2x.png'
                }

                Component.onCompleted: {
                    appWindowTitleObjects.push(nextButtonId)
                }
            }
        }
    }


}
