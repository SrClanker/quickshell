import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
  anchors.left: parent.left
  implicitWidth: row.implicitWidth + 25
  implicitHeight: row.implicitHeight * 2
  radius: implicitHeight / 2
  color: "black"

  RowLayout {
    id: row
    anchors.fill: parent
    anchors.margins: 10
    anchors.centerIn: parent
    spacing: 15
    anchors.leftMargin: 20

    Repeater {
      model: 10
      Text {
        property var workspace: Hyprland.workspaces.values.find(w => w.id === index + 1)
        property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)

        text: index + 1
        font.pixelSize: Theme.fontSize
        font.family: Theme.fontFamily

        color: isActive ? Theme.colorWhite
        : workspace ? Theme.colorWhite2
        : Theme.colorWhite3
      }
    }

    Item { Layout.fillWidth: true }
  }
}
