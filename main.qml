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
            LeftControlBar {
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
            }

            Rectangle {


                Layout.fillHeight: true
                Layout.fillWidth: true

                color: 'orange'

                ColumnLayout {






                    Rectangle {
                        color: 'blue'
                        Layout.fillWidth: true
                        Layout.preferredHeight: 50
                    }

                    Rectangle {
                        color: 'green'
                    }

                    RowLayout {

                    }
                }
            }


        }







}
