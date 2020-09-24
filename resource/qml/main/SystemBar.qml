import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Item {
    property int containerSize: 26
    property int buttonSize: 15

    RowLayout {
        spacing: 5
        anchors.centerIn: parent
        Layout.alignment: Qt.AlignRight

        //反馈
        Button {
            Layout.preferredWidth: containerSize
            Layout.preferredHeight: containerSize
            background: Rectangle {
                border.color: 'transparent'
                color: 'transparent'
            }
            Image {
                width: buttonSize
                height: buttonSize
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/resource/image/mnu_tool_opinion_icon@2x.png'
            }

        }

        //最小化
        Button {
            Layout.preferredWidth: containerSize
            Layout.preferredHeight: containerSize
            background: Rectangle {
                border.color: 'transparent'
                color: 'transparent'
            }
            Image {
                width: buttonSize
                height: buttonSize
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/resource/image/mnu_tool_minimize_icon@2x.png'
            }
        }

        //最大化
        Button {
            Layout.preferredWidth: containerSize
            Layout.preferredHeight: containerSize
            background: Rectangle {
                border.color: 'transparent'
                color: 'transparent'
            }
            Image {
                width: buttonSize
                height: buttonSize
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/resource/image/mnu_tool_maximize_icon@2x.png'
            }
        }

        //关闭
        Button {
            Layout.preferredWidth: containerSize
            Layout.preferredHeight: containerSize
            background: Rectangle {
                border.color: 'transparent'
                color: 'transparent'
            }
            Image {
                width: buttonSize
                height: buttonSize
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/resource/image/mnu_tool_close_icon@2x.png'
            }
        }
    }
}
