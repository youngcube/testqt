import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
import '../components'

Item {

    property int containerSize: 26
    property int buttonSize: 15

    RowLayout {
        spacing: 20
        anchors.centerIn: parent

        //保存
        CommonButton {
            id: saveButtonId
            Layout.preferredWidth: containerSize
            Layout.preferredHeight: containerSize
            Image {
                width: buttonSize
                height: buttonSize
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/resource/image/mnu_tool_save_icon@2x.png'
            }

            Component.onCompleted: {
                appWindowTitleObjects.push(saveButtonId)
            }
        }

        //收藏
        CommonButton {
            id: favButtonId
            Layout.preferredWidth: containerSize
            Layout.preferredHeight: containerSize
            Image {
                width: buttonSize
                height: buttonSize
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/resource/image/mnu_tool_mark_icon@2x.png'
            }

            Component.onCompleted: {
                appWindowTitleObjects.push(favButtonId)
            }
        }

        //发音
        CommonButton {
            id: speakButtonId
            Layout.preferredWidth: containerSize
            Layout.preferredHeight: containerSize
            Image {
                width: buttonSize
                height: buttonSize
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/resource/image/mnu_tool_voice_icon@2x.png'
            }

            Component.onCompleted: {
                appWindowTitleObjects.push(speakButtonId)
            }
        }

        //字体
        CommonButton {
            id: fontButtonId
            Layout.preferredWidth: containerSize
            Layout.preferredHeight: containerSize
            Image {
                width: buttonSize
                height: buttonSize
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: 'qrc:/resource/image/mnu_tool_font_icon@2x.png'
            }

            Component.onCompleted: {
                appWindowTitleObjects.push(fontButtonId)
            }
        }
    }
}
