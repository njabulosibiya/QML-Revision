import QtQuick 2.15

Rectangle {
    id: root
    width: textEdit.width
    height: textEdit.height
    color: "#7B2869"
    radius: 5

    TextEdit {
        id: textEdit
        width: 150
        height: 150
        padding: 5
        text: "hello"
        color: "white"
        wrapMode: width
        clip: true

    }
}
