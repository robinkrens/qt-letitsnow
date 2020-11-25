import QtQuick 2.0

import org.kde.plasma.configuration 2.0

ConfigModel {
    ConfigCategory {
         name: i18n("General")
         icon: "settings-configure"
         source: "ConfigGeneral.qml"
    }
}
