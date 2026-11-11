import Quickshell

Variants {
  model: Quickshell.screens

  PanelWindow {
    required property var modelData
    color: "#121212"
    screen: modelData
    implicitHeight: 50

    anchors {
      top: true
      left: true
      right: true
    }

    Clock {}
    Workspaces {}
  }
}
