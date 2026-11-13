import Quickshell
import QtQuick.Layouts

PanelWindow {
  id: root
  color: "transparent"
  implicitHeight: bar.implicitHeight

  margins {
    top: 20
    left: 40
    right: 40
    bottom: -10
  }

  anchors {
    top: true
    left: true
    right: true
    bottom: false
  }

  RowLayout {
    id: bar
    anchors.fill: parent
    spacing: 8

    Clock {}
    Workspaces {}
  }
}
