import QtQuick
import Quickshell

Rectangle {
  anchors.centerIn: parent
  color: "black"
  implicitWidth: text.implicitWidth * 2
  implicitHeight: text.implicitHeight * 2
  radius: implicitHeight / 2

  Text {
    id: text
    SystemClock {
      id: clock
      precision: SystemClock.Minutes
    }

    anchors.centerIn: parent
    text: Qt.formatDateTime(clock.date, "h:mm AP")
    font.pixelSize: Theme.fontSize
    font.family: Theme.fontFamily
    color: Theme.colorWhite
  }
}
