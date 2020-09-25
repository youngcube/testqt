import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
import QtQuick.Window 2.12
import '../components'
Item {
    property int containerSize: 26
    property int buttonSize: 15

    RowLayout {

        anchors.fill: parent
        spacing: 0

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        RowLayout {
            spacing: 5

            Layout.alignment: Qt.AlignRight

            //反馈
            CommonButton {
                id: feedbackId
                Layout.preferredWidth: containerSize
                Layout.preferredHeight: containerSize
                Image {
                    width: buttonSize
                    height: buttonSize
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: 'qrc:/resource/image/mnu_tool_opinion_icon@2x.png'
                }

                Component.onCompleted: {
                    appWindowTitleObjects.push(feedbackId)
                }
            }

            //最小化
            CommonButton {
                id: minimumId
                visible: Qt.platform.os !== 'osx'
                Layout.preferredWidth: containerSize
                Layout.preferredHeight: containerSize
                Image {
                    width: buttonSize
                    height: buttonSize
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: 'qrc:/resource/image/mnu_tool_minimize_icon@2x.png'
                }

                onClicked: appWindow.visibility = Window.Minimized

                Component.onCompleted: {
                    appWindowTitleObjects.push(minimumId)
                }
            }

            //最大化
            CommonButton {
                id: maximumId
                visible: Qt.platform.os !== 'osx'
                Layout.preferredWidth: containerSize
                Layout.preferredHeight: containerSize
                Image {
                    width: buttonSize
                    height: buttonSize
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: 'qrc:/resource/image/mnu_tool_maximize_icon@2x.png'
                }

                onClicked: {
                    appWindow.visibility = Window.visibility === Window.Windowed ? Window.Maximized : Window.Windowed
                }

                Component.onCompleted: {
                    appWindowTitleObjects.push(maximumId)
                }
            }

            //关闭
            CommonButton {
                id: closeButtonId
                visible: Qt.platform.os !== 'osx'
                Layout.preferredWidth: containerSize
                Layout.preferredHeight: containerSize
                Image {
                    width: buttonSize
                    height: buttonSize
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    source: 'qrc:/resource/image/mnu_tool_close_icon@2x.png'
                }

                onClicked: appWindow.close()

                Component.onCompleted: {
                    appWindowTitleObjects.push(closeButtonId)
                }
            }
        }

        Item {
            Layout.preferredWidth: 19 //与头像靠左的位置一致
            Layout.fillHeight: true
        }
    }
}
