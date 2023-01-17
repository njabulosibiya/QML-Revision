import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/components/QML/Archive(basics)/"
import "qrc:/pages/QML/DisplayPages/"

ApplicationWindow {
    id: window
    visible: true
    visibility: "Maximized"
    height: 490
    width: 640
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

        ListView {
            id: listView
            anchors.fill: parent
            spacing: 5
            anchors.margins: 5
            clip: true
            snapMode: ListView.SnapToItem
            model: listModel
            delegate: buttonDelegate
            ScrollIndicator.vertical: ScrollIndicator {}
        }//end_listView

        //data model for our ListView
        ListModel {
            id: listModel
            ListElement {
                title: "About"
                link: "qrc:/pages/QML/DisplayPages/AboutPage.qml"
            }

            ListElement {
                title: "Basic Models"
                link: "qrc:/pages/QML/DisplayPages/BasicModels.qml"
            }

            ListElement {
                title: "Delegation"
                link: "qrc:/pages/QML/DisplayPages/Delegation.qml"
            }

            ListElement {
                title: "Layout"
                link: "qrc:/pages/QML/DisplayPages/LAyoutController.qml"
            }


        }//end_listModel

        //delegate for drawer button
        Component {
            id: buttonDelegate
            Button {
                text: title
                width: parent.width
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        drawer.close()
                        stackView.push(link)
                    }
                }
            }//end_button
        }//end_buttonDelegate
    }//end_drawer

    //included to allow the use of stackView
    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Home {}
    }

}//end_window
