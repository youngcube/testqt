import QtQuick 2.0
import QtQuick.Layouts 1.3

//ColumnLayout {
//    id: layout
//    anchors.fill: parent
//    spacing: 0
//    Rectangle {
//        x: 0
//        y: 20
//        color: 'yellow'
//        Layout.fillWidth: true
//        Layout.preferredHeight: 100

//        /****fillWidth设置为true
//            宽度就会在最小值和最大值之间变化，否则就是preferredwidth
//            fillHeight同理
//        ******/
////        Layout.minimumWidth: 50
////        Layout.preferredWidth: 100
////        Layout.maximumWidth: 300
////        Layout.minimumHeight: 150

////        Layout.preferredHeight: 100


//    }

//    Rectangle {
//        color: 'red'
//        Layout.fillWidth: true
//        Layout.preferredHeight: 100
//    }
//}

Column {

    anchors.fill: parent

    Rectangle {
        id: avatar
        color: 'blue'
        height: 50
        width: parent.width
        Text {
            text: qsTr("头像")
        }
    }

    ColumnLayout {
        id: bottom_setting
//        anchors.top: toolbar.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        spacing: 0
        Rectangle {
            x: 0
            y: 20
            color: 'green'
            Layout.fillWidth: true
            Layout.preferredHeight: 100
        }

        Rectangle {
            color: 'black'
            Layout.fillWidth: true
            Layout.preferredHeight: 100
        }
    }

    ColumnLayout {
        id: toolbar
        anchors.top: avatar.bottom
        anchors.bottom: bottom_setting.top
        anchors.left: parent.left
        anchors.right: parent.right

        spacing: 0
        Rectangle {
            x: 0
            y: 20
            color: 'yellow'
            Layout.fillWidth: true
            Layout.preferredHeight: 100
        }

        Rectangle {
            color: 'red'
            Layout.fillWidth: true
            Layout.preferredHeight: 100
        }
    }
}
