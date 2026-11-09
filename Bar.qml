import Quickshell
import Quickshell.Wayland

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      color: "#121212"
      screen: modelData
      WlrLayershell.layer: WlrLayer.Bottom
      implicitHeight: 40

      anchors {
        top: true
        left: true
        right: true
      }

      ClockWidget {
        anchors.centerIn: parent
      }
    }
  }
}
