import QtQuick 2.15

Rectangle {
    id: root
    width: input1.width + input2.width + input3.width
    height: input1.height + input2.height + input3.height
    color: "#7B2869"
    radius: 5

    TextInput {
        id: input1
        width: 120
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        leftPadding: 10
        KeyNavigation.tab: input2
        focus: true
        clip: true
        text: "input1"
        color: "white"
    }

    TextInput {
        id: input2
        width: 120
        anchors.leftMargin: 10
        anchors.left: input1.right
        anchors.verticalCenter: parent.verticalCenter
        leftPadding: 10
        KeyNavigation.tab: input3
        focus: true
        clip: true
        text: "input1"
        color: "white"
    }

    TextInput {
        id: input3
        width: 120
        anchors.leftMargin: 10
        anchors.left: input2.right
        anchors.verticalCenter: parent.verticalCenter
        leftPadding: 10
        KeyNavigation.tab: input1
        focus: true
        clip: true
        text: "input1"
        color: "white"
    }
}
