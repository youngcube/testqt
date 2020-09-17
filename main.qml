import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2



ApplicationWindow {


    visible: true
    id: root

    width: 800; height: 600

    RowLayout {
            id: layout
            anchors.fill: parent
            spacing: 0
            Rectangle {
                color: 'teal'
                Layout.fillWidth: false
                Layout.fillHeight: true
                /****fillWidth设置为true
                    宽度就会在最小值和最大值之间变化，否则就是preferredwidth
                    fillHeight同理
                ******/
                Layout.minimumWidth: 50
                Layout.preferredWidth: 60
                Layout.maximumWidth: 300
                Layout.minimumHeight: 150

                LeftControlBar {

                }
            }
            Rectangle {
                color: 'plum'
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumWidth: 100
                Layout.preferredWidth: 200
                Layout.preferredHeight: 100
                Text {
                    anchors.centerIn: parent
                    text: parent.width + 'x' + parent.height
                }
            }
        }







}
