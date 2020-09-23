import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2
import QtWebEngine 1.8
import QtQuick.Window 2.2

ApplicationWindow {


    visible: true
    id: window
    title: '测试'
    width: 900; height: 600

    //调试逻辑，重新加载qml
    Loader {
        id: _loader
        function reload() {
            source = "";
            $QmlEngine.clearCache();
            source = "main.qml";
            $QmlEngine.closeMainWindow();
        }
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
//            _loader.reload();
        }
    }


    //去掉窗口标题等
//    flags: Qt.FramelessWindowHint | Qt.Window
    //拖动窗口
//    MouseArea {
//        anchors.fill: parent
//        property point lastMousePos: Qt.point(0, 0)
//        onPressed: { lastMousePos = Qt.point(mouseX, mouseY); }
//        onMouseXChanged: window.x += (mouseX - lastMousePos.x)
//        onMouseYChanged: window.y += (mouseY - lastMousePos.y)
//    }




    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 0

        //左侧工具条
        LeftControlBar {
            Layout.fillWidth: false
            Layout.fillHeight: true
            /****fillWidth设置为true
                宽度就会在最小值和最大值之间变化，否则就是preferredwidth
                fillHeight同理
            ******/
//            Layout.preferredWidth: 60
        }


        //右侧
        ColumnLayout {
            spacing: 0

            //顶部搜索等
            TopControlBar {
                Layout.fillWidth: true
                Layout.fillHeight: false
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
