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

    width: 60

    Rectangle {
        id: avatar
        color: 'blue'
        height: 50
        width: parent.width
        Text {

            anchors.fill: parent

            wrapMode: Text.WordWrap
            text: qsTr("东晋也曾多次试图北伐，但由于内部不团结，东晋君主表面上支持北伐，实质害怕连半璧江山都失去，导致北伐豪无建树，只有最后篡晋的刘裕收回部分失地。祖逖本有希望恢复旧土，但他被晋元帝及世家大族挟制，郁郁而终。桓温的北伐则被慕容垂击败")
            color: 'white'

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
            Layout.preferredHeight: 50
        }

        Rectangle {
            color: 'black'
            Layout.fillWidth: true
            Layout.preferredHeight: 50
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
            Layout.preferredHeight: 50
        }

        Rectangle {
            color: 'red'
            Layout.fillWidth: true
            Layout.preferredHeight: 50
        }

        Rectangle {
            color: 'lightgray'
            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.preferredHeight: 1
        }

        Rectangle {
            color: 'red'
            Layout.fillWidth: true
            Layout.preferredHeight: 50
        }

        Rectangle {
            color: 'red'
            Layout.fillWidth: true
            Layout.preferredHeight: 50
        }

        Rectangle {
            color: 'red'
            Layout.fillWidth: true
            Layout.preferredHeight: 50
        }
    }
}
