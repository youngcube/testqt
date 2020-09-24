import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtWebEngine 1.8
import QtQuick.Window 2.2
import FramelessWindowHelper 1.0

ApplicationWindow {

    property int topTitleBarHeight: 60

    visible: true
    id: main_window
    title: '欧路词典'
    width: 900; height: 600

    //调试逻辑，按下F5重新加载qml
    Shortcut {
        sequence: "F5"
        onActivated: {
            main_window.close()
            main_app.loadQml()
        }
    }

    //去掉窗口标题等
    flags: Qt.FramelessWindowHint | Qt.Window

    FramelessWindowHelper {
        Component.onCompleted: {
            //设置顶部按钮，避免按下按钮与双击放大冲突
//            addTitleObject(button)
            setTitleHeight(topTitleBarHeight)
        }
    }


    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 0

        //左侧工具条
        LeftControlBar {
            Layout.fillWidth: false
            Layout.fillHeight: true
        }


        //右侧
        ColumnLayout {
            spacing: 0

            //顶部搜索等
            TopControlBar {
                height: topTitleBarHeight
                Layout.fillWidth: true
                Layout.fillHeight: false

                //拖动窗口
                MouseArea {
                    anchors.fill: parent
                    property point pressPos
                    onPressed: pressPos = Qt.point(mouse.x, mouse.y)
                    onPositionChanged: {
                        if (main_window.visibility === Window.Windowed) {
                            main_window.x += mouse.x - pressPos.x
                            main_window.y += mouse.y - pressPos.y
                        }
                    }
                    onDoubleClicked: {

                    }
                }
            }

            //分割线
            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 1
                color: '#EFEFF0'
            }

            SplitView {
                Layout.fillWidth: true
                Layout.fillHeight: true

                orientation: Qt.Horizontal

                //中间的分隔条样式
                handle: Rectangle {
                    implicitWidth: 1
                    implicitHeight: 1
                    color: SplitHandle.pressed ? "#EFEFF0"
                            : (SplitHandle.hovered ? Qt.lighter("#EFEFF0", 1.1) : "#EFEFF0")
                }

                //单词列表
                LeftTreeView {
                    SplitView.maximumWidth: 400
                    SplitView.preferredWidth: 150
                    SplitView.minimumWidth: 50
                    SplitView.fillHeight: true
                }

                //解释界面
                Item {
                    id: centerItem
                    SplitView.fillWidth: true
                    WebEngineView {
                        anchors.fill: parent
                        url: "http://dict.eudic.net/"
                    }
                }
            }
        }
    }
}
