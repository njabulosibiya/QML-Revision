import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import Qt.labs.platform 1.1

ApplicationWindow {
    id: root
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    title: qsTr("image viewer")
    //creates background color for entire window
    background: Rectangle {
        color: "white"
    }

    /*Creates a drawer that will house a list of options(buttons) and since it's a list we could use a Column
     and use cuton buttons, although it'll be far less effort if we used */
    Drawer {
        id: drawer

        width: Math.min(root.width, root.height) / 3*2
        height: root.height

        ListView {
            focus: true
            currentIndex: -1
            anchors.fill: parent
            anchors.margins: 5
            spacing: 2

            delegate: ItemDelegate {
                width: parent.width
                background: Rectangle {
                    color: "#6C00FF"
                    radius: 2
                }

                text: qsTr(model.text)
                highlighted: ListView.isCurrentItem
                onClicked: {
                    drawer.close()
                    model.triggered()
                }
            }

            model: ListModel {
                ListElement {
                    text: qsTr("Open...")
                    triggered: function() {
                        fileOpenDialog.open();
                    }
                }
                ListElement {
                    text: qsTr("About")
                    triggered: function () {
                        aboutDialog.open();
                    }
                }
            }

            ScrollIndicator.vertical: ScrollIndicator {}
        }
    }//end_drawer

    header: ToolBar {
        Material.background: "#6C00FF"
        ToolButton {
            id: menuButton
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "qrc:/icons/icons/bars.svg"
            onClicked: drawer.open()
        }

        ToolButton {
            id: imageClose
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "qrc:/icons/icons/times-square.svg"
            onClicked: image.source = ""
        }

        Label {
            anchors.centerIn: parent
            text: "Image Viewer"
            font {
                family: "poppins"
                pixelSize: 20
            }
            elide: Label.ElideRight//i do not know what this does
        }
    }

    //custom dialog that shows text
    Dialog {
        id: aboutDialog
        title: qsTr("About")
        Label {
            anchors.centerIn: parent
            text: qsTr("QML image viewer\nA part of the QML book\n https://njabulosibiya.co.za")
            horizontalAlignment: Text.AlignHCenter
        }
    }

    //creates a pop-up file dialog
    FileDialog {
        id: fileOpenDialog
        title: "Select an image file"
        folder: StandardPaths.writableLocation(StandardPaths.DocumentsLocation)
        nameFilters: ["Images files (*.png *.jpg *.jpeg)",]
        onAccepted: {
            image.source = fileOpenDialog.file
        }
    }

    //our image with source being fetched from fileOpenDialog
    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit//makes it fit without cropping
        asynchronous: true
    }




}//end_main_program
