import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

RowLayout {
  anchors.fill: parent
  anchors.margins: 10

  Repeater {
    model: 9

    Text {
      property var workspace:
      Hyprland.workspaces.values.find(w => w.id === index + 1)

      property bool isActive:
      Hyprland.focusedWorkspace?.id === (index + 1)

      text: index + 1
      font.pixelSize: Theme.fontSize
      font.family: Theme.font

      color: isActive ? Theme.colorWhite
      : workspace ? Theme.colorWhite2
      : Theme.colorWhite3
    }
  }

  Item { Layout.fillWidth: true }
}
