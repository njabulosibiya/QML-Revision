import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    RowLayout {
        id: page
        anchors.fill: parent

        BlueSquare {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumWidth: 150
        }

        GreenSquare {
            Layout.fillWidth: true
            Layout.minimumWidth: 150
            Layout.fillHeight: true

        }

        RedSquare {
            Layout.fillWidth: true
            Layout.minimumWidth: 150
            Layout.fillHeight: true

        }

        BlueSquare {
            Layout.fillWidth: true
            Layout.minimumWidth: 150
            Layout.fillHeight: true

        }

        RedSquare {
            Layout.fillWidth: true
            Layout.minimumWidth: 150
            Layout.fillHeight: true

        }
    }
}
