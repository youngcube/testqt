import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

Item {

    RowLayout {

        anchors.fill: parent

        spacing: 10



        TextField {
            id: searchField
            placeholderText: qsTr("搜索单词")
            Layout.fillHeight: false
            Layout.fillWidth: true


            Layout.preferredHeight: 26
        }

        Rectangle {

            Layout.preferredWidth: searchField.height
            Layout.preferredHeight: searchField.height

            border.color: 'blue'
        }

        Rectangle {

            Layout.preferredWidth: searchField.height
            Layout.preferredHeight: searchField.height

            border.color: 'blue'
        }
    }


}
