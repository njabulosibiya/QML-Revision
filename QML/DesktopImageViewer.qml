import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3

/*Because all code here is in ApplicationWindow, if you use it as a component, it will give you an error that
 *DesktopImageViewer is not a type.*/
ApplicationWindow {
    id: root
    minimumHeight: 480
    minimumWidth: 690
    background: Rectangle {
        color: "#6C00FF"
    }

    //creates a toolbar in the header of the window. ToolBar has buttons
    header: ToolBar {
        background: Rectangle {
            color: "#6C00FF"
            border.color: "black"
        }

        Flow {
            anchors.fill: parent
            ToolButton {
                text: "open"
                icon.name: "document-open"
                onClicked: fileOpenDialog.open()
            }

            ToolButton {
                text: "remove"
                icon.name: "close"
                onClicked: image.source = ""
            }
        }
    }

    //creates menubar in the menubar section of window. This menubar has only one menu that has 2 menu items
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open...")
                icon.name: "document-open"
                onTriggered: fileOpenDialog.open()
            }
            MenuItem {
                text: qsTr("&Help")
                icon.name: "help"
                onTriggered: aboutDialog.open()
            }
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
        folder: shortcuts.documents
        nameFilters: ["Images files (*.png *.jpg *.jpeg)",]
        onAccepted: {
            image.source = fileOpenDialog.fileUrl
        }
    }

    //our image with source being fetched from fileOpenDialog
    Image {
        id: image
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit//makes it fit without cropping
        asynchronous: true
    }

}
