import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/components/QML/Archive(basics)/"
import "qrc:/pages/QML/DisplayPages/"

ApplicationWindow {
    id: window
    visible: true
    minimumHeight: 490
    minimumWidth: 640
    title: "Document Windows"
    background: Rectangle {
        color: "#6C00FF"
    }

    header: ToolBar {
        anchors.margins: 10
        ToolButton {
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            icon.source: stackView.depth > 1? "qrc:/icons/icons/arrow-left.svg" : "qrc:/icons/icons/bars.svg"
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                }else {
                    drawer.open()
                }
            }
        }

        Label {
            anchors.centerIn: parent
            text: qsTr("Label")
            font.family: "poppins"
        }
    }

    Drawer {
        id: drawer
        width: window.width/4
        height: window.height

        Column {
            anchors.fill: parent
            spacing: 5
            anchors.margins: 5

            Button {
                text: "About"
                width: parent.width
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        drawer.close()
                        stackView.push("qrc:/pages/QML/DisplayPages/AboutPage.qml")
                    }
                }
            }
            Button {
                text: "Basic Models"
                width: parent.width
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        drawer.close()
                        stackView.push("qrc:/pages/QML/DisplayPages/BasicModels.qml")
                    }
                }
            }
            Button {
                text: "Delegation"
                width: parent.width
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        drawer.close()
                        stackView.push("qrc:/pages/QML/DisplayPages/Delegation.qml")
                    }
                }
            }
        }

    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Home {}
    }

}//end_window
