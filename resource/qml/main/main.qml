import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtWebEngine 1.8
import QtQuick.Window 2.2
import FramelessWindowHelper 1.0
import '../components'

ApplicationWindow {

    property int topTitleBarHeight: 60
    property var appWindowTitleObjects: []

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

    flags: Qt.platform.os !== 'osx' ? Qt.FramelessWindowHint | Qt.Window : Qt.Window

    Timer {
        id: timer
    }

    function delay(delayTime, cb) {
        timer.interval = delayTime;
        timer.repeat = false;
        timer.triggered.connect(cb);
        timer.start();
    }

    //去掉窗口标题等，且支持放大缩小
    FramelessWindowHelper {

        Component.onCompleted: {
            //设置顶部按钮，避免按下按钮与双击放大冲突，这里需要一段延迟
            delay(1000, function() {
                addTitleObjects(appWindowTitleObjects)
            })
            //设置顶部高度，来响应双击放大
            setTitleHeight(topTitleBarHeight)
        }
    }

    //为了支持windows下的frameless，外面再套一层，因为最大化后边缘会被屏幕裁掉
    Item {
        anchors.fill: parent
        anchors.margins: (main_window.visibility === ApplicationWindow.Maximized && Qt.platform.os === 'windows') ? 8 : 0

        RowLayout {
            id: layout
            anchors.fill: parent
            spacing: 0

            //左侧工具条
            Item {
                Layout.preferredWidth: 70
                Layout.fillWidth: false
                Layout.fillHeight: true

                DragMainWindowMouseArea {

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

                    //拖动窗口，注意MouseArea有优先级，后面覆盖前面，因此需要放到最上面，同时与顶部控制条同一层级
                    //目前这里顶部拖动，其实就linux会用到，windows通过framelesshelper了，而mac则是macutilsmanager
                    DragMainWindowMouseArea {

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
                        implicitWidth: 5
                        implicitHeight: 1
                        color: SplitHandle.pressed ? "#EFEFF0"
                                : (SplitHandle.hovered ? Qt.lighter("#EFEFF0", 1.1) : "#EFEFF0")
                    }

                    //单词列表
                    LeftTreeView {
                        SplitView.maximumWidth: 500
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
}
