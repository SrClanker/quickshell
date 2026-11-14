import Quickshell
import Quickshell.Services.UPower
import QtQuick

Rectangle {
  anchors.right: parent.right
  color: "black"
  implicitWidth: text.implicitWidth * 2
  implicitHeight: text.implicitHeight * 2
  radius: implicitHeight / 2
  anchors.verticalCenter: parent.verticalCenter

  Text {
    id: text

    property UPowerDevice battery: {
      const devices = UPower.displayDevice ? UPower.devices.values : []

      for (const i of devices)
      if (i && i.type === UPowerDeviceType.Battery && i.nativePath === "BAT1")
      return i
    }

    property int percentage: battery.percentage * 100
    property bool isCharging: battery ? battery.state === battery.UPowerDeviceState.Charging : false
    text: (isCharging ? "Charging " : "Discharging ") + percentage + "%"

    anchors.centerIn: parent
    color: Theme.colorWhite
    font.family: Theme.fontFamily
    font.pixelSize: Theme.fontSize
  }
}
