import Quickshell
import QtQuick.Layouts

PanelWindow {
  id: root
  color: "transparent"
  implicitHeight: 50

  margins {
    top: 20
    left: 40
    right: 40
    bottom: -20
  }

  anchors {
    top: true
    left: true
    right: true
    bottom: false
  }

  Clock {}
  Workspaces {}
  Battery {}
}
