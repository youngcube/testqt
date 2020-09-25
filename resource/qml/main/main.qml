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
    //暴露给下面的qml文件使用
    property ApplicationWindow appWindow : main_window
    title: '欧路词典'

    width: 900
    height: 600

    //保证所有元素都能显示，不会重叠
    minimumWidth: 680
    minimumHeight: 550

    //调试逻辑，按下F5重新加载qml
    Shortcut {
        sequence: "F5"
        onActivated: {
            main_window.close()
            main_app.loadQml()
        }
    }

    //去掉窗口标题等，且支持放大缩小
    FramelessWindowHelper {
        Component.onCompleted: {
            //设置顶部按钮，避免按下按钮与双击放大冲突
            addTitleObject(test123)
            setTitleHeight(topTitleBarHeight)
        }
    }

    flags: Qt.platform.os !== 'osx' ? Qt.FramelessWindowHint | Qt.Window : Qt.Window

    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 0

        //左侧工具条
        Item {
            id: test123
            Layout.preferredWidth: 70
            Layout.fillWidth: false
            Layout.fillHeight: true

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

            LeftControlBar {
                anchors.fill: parent
            }
        }


        //右侧
        ColumnLayout {
            spacing: 0

            Item {

                Layout.preferredHeight: topTitleBarHeight
                Layout.fillHeight: false
                Layout.fillWidth: true

                //todo: 抽象出来
                //拖动窗口，注意MouseArea有优先级，后面覆盖前面，因此需要放到最上面，同时与顶部控制条同一层级
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

                //顶部搜索等
                TopControlBar {
                    anchors.fill: parent
                }
            }


            //分割线
            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: false
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
