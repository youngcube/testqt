import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2



ApplicationWindow {


    visible: true
    id: root
    title: '测试'

    width: 600; height: 600

    RowLayout {
        id: layout
        anchors.fill: parent
        spacing: 0

        //左侧工具条
        LeftControlBar {
            width: 200
            Layout.fillWidth: false
            Layout.fillHeight: true
            /****fillWidth设置为true
                宽度就会在最小值和最大值之间变化，否则就是preferredwidth
                fillHeight同理
            ******/
            Layout.preferredWidth: 60
        }


        //右侧
        ColumnLayout {
            spacing: 0

            //顶部搜索等
            SearchBar {
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.preferredHeight: 60
            }

            SplitView {
                Layout.fillWidth: true
                Layout.fillHeight: true

                orientation: Qt.Horizontal

                //单词列表
                LeftTreeView {
                    SplitView.maximumWidth: 400
                    SplitView.preferredWidth: 150
                    SplitView.minimumWidth: 50
//                    SplitView.fillHeight: true
                }

                //解释界面
                Rectangle {
                    id: centerItem
                    SplitView.fillWidth: true
                    color: "lightgray"
                    Text {
                        text: "View 2"
                        anchors.centerIn: parent
                    }
                }
            }
        }
    }
}
