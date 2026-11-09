pragma Singleton
import Quickshell

Singleton {
  readonly property string time: {
    Qt.formatDateTime(clock.date, "h:mm AP")
  }

  SystemClock {
    id: clock
    precision: SystemClock.Minutes
  }
}
