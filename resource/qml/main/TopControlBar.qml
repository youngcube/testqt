import QtQuick 2.0
import QtQuick.Layouts 1.3

RowLayout {
    spacing: 0

    SearchBar {
        Layout.fillHeight: true
        Layout.preferredWidth: 300
    }

    Item {
        Layout.fillHeight: true
        Layout.fillWidth: true
        DictBar {
            anchors.centerIn: parent
        }
    }

    SystemBar {
        Layout.fillHeight: true
        Layout.preferredWidth: 130
    }
}
