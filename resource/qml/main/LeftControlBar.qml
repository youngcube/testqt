import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.12

Rectangle {
    width: 60
    color: '#33373B'
    property int toolButtonHeight: 60

    Column {

        anchors.fill: parent


        Item {
            height: 70
            width: parent.width
            id: avatar

            Button {
                x: 14
                y: 20
                width: 32
                height: 32
                checkable: false
                checked: false

                background: Rectangle {
                    border.color: 'transparent'
                    color: 'transparent'
                }

                Image {
                    id: avatar_image
                    anchors.fill: parent
                    source: 'https://api.frdic.com/api/v3/user/avatar/a1a4183f-398f-11e5-83e4-000c29ffef9b'

                    property bool rounded: true
                    property bool adapt: true

                    layer.enabled: rounded
                    layer.effect: OpacityMask {
                        maskSource: Item {
                            width: avatar_image.width
                            height: avatar_image.height
                            Rectangle {
                                anchors.centerIn: parent
                                width: avatar_image.adapt ? avatar_image.width : Math.min(avatar_image.width, avatar_image.height)
                                height: avatar_image.adapt ? avatar_image.height : width
//                                radius: Math.min(width, height)
                                radius: 5
                            }
                        }
                    }
                }
            }
        }

        ColumnLayout {
            id: bottom_setting
    //        anchors.top: toolbar.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            spacing: 0
            Button {
                x: 0
                y: 20
                Layout.fillWidth: true
                Layout.preferredHeight: toolButtonHeight
                background: Rectangle {
                    border.color: 'transparent'
                    color: 'transparent'
                }
                Image {
                    width: 25
                    height: 25
                    anchors.centerIn: parent
                    source: 'qrc:/resource/image/sidebar_setting_icon@2x.png'
                }
            }



            Button {
                Layout.fillWidth: true
                Layout.preferredHeight: toolButtonHeight
                background: Rectangle {
                    border.color: 'transparent'
                    color: 'transparent'
                }
                Image {
                    width: 25
                    height: 25
                    anchors.centerIn: parent
                    source: 'qrc:/resource/image/sidebar_tool_icon@2x.png'
                }
            }
        }

        Item {
            id: toolbar
            anchors.top: avatar.bottom
            anchors.bottom: bottom_setting.top
            anchors.left: parent.left
            anchors.right: parent.right



            ColumnLayout {

                anchors.verticalCenter: parent.verticalCenter
                width: parent.width

                spacing: 0

                //词典
                Button {
                    Layout.fillWidth: true
                    Layout.preferredHeight: toolButtonHeight
                    background: Rectangle {
                        border.color: 'transparent'
                        color: 'transparent'
                    }
                    Image {
                        width: 25
                        height: 25
                        anchors.centerIn: parent
                        source: 'qrc:/resource/image/sidebar_dic_icon@2x.png'
                    }
                }

                LeftControlBarLine {}


                //百科
                Button {
                    Layout.fillWidth: true
                    Layout.preferredHeight: toolButtonHeight
                    background: Rectangle {
                        border.color: 'transparent'
                        color: 'transparent'
                    }
                    Image {
                        width: 25
                        height: 25
                        anchors.centerIn: parent
                        source: 'qrc:/resource/image/sidebar_wiki_icon@2x.png'
                    }
                }

                LeftControlBarLine {}

                //学习
                Button {
                    Layout.fillWidth: true
                    Layout.preferredHeight: toolButtonHeight
                    background: Rectangle {
                        border.color: 'transparent'
                        color: 'transparent'
                    }
                    Image {
                        width: 25
                        height: 25
                        anchors.centerIn: parent
                        source: 'qrc:/resource/image/sidebar_record_icon@2x.png'
                    }
                }

                LeftControlBarLine {}

                //翻译
                Button {
                    Layout.fillWidth: true
                    Layout.preferredHeight: toolButtonHeight
                    background: Rectangle {
                        border.color: 'transparent'
                        color: 'transparent'
                    }
                    Image {
                        width: 25
                        height: 25
                        anchors.centerIn: parent
                        source: 'qrc:/resource/image/sidebar_tran_icon@2x.png'
                    }
                }

                LeftControlBarLine {}

                //背单词
                Button {
                    Layout.fillWidth: true
                    Layout.preferredHeight: toolButtonHeight
                    background: Rectangle {
                        border.color: 'transparent'
                        color: 'transparent'
                    }
                    Image {
                        width: 25
                        height: 25
                        anchors.centerIn: parent
                        source: 'qrc:/resource/image/sidebar_word_icon@2x.png'
                    }
                }
            }
        }
    }
}


