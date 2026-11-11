import QtQuick
import Quickshell

Text {
  SystemClock {
    id: clock
    precision: SystemClock.Minutes
  }

  readonly property string time: {
    Qt.formatDateTime(clock.date, "h:mm AP")
  }

  anchors.centerIn: parent
  text: time
  font.pixelSize: Theme.fontSize
  font.family: Theme.font
  color: "#dddddd"
}
