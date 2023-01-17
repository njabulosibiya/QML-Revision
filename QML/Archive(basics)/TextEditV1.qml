import QtQuick 2.15

Rectangle {
    id: root
    color: "#7B2869"
    radius: 5

    TextEdit {
        id: textEdit
        anchors.fill: parent
        padding: 5
        text: "hello"
        color: "white"
        wrapMode: width
        clip: true

    }
}
