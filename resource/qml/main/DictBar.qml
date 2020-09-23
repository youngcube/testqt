import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Item {

    property int containerSize: 26
    property int buttonSize: 15

    RowLayout {
        spacing: 20
        anchors.centerIn: parent
        Layout.alignment: Qt.AlignRight

        //保存
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
                source: 'qrc:/resource/image/mnu_tool_save_icon@2x.png'
            }
        }

        //收藏
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
                source: 'qrc:/resource/image/mnu_tool_mark_icon@2x.png'
            }
        }

        //发音
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
                source: 'qrc:/resource/image/mnu_tool_voice_icon@2x.png'
            }
        }

        //字体
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
                source: 'qrc:/resource/image/mnu_tool_font_icon@2x.png'
            }
        }
    }
}
