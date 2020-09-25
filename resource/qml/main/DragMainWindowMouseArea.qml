import QtQuick 2.0
import QtQuick.Window 2.2

MouseArea {
    anchors.fill: parent
    property point pressPos
    onPressed: pressPos = Qt.point(mouse.x, mouse.y)
    onPositionChanged: {
        if (appWindow.visibility === Window.Windowed) {
            appWindow.x += mouse.x - pressPos.x
            appWindow.y += mouse.y - pressPos.y
        }
    }
    onDoubleClicked: {

    }
}
