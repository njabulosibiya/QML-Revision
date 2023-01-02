import QtQuick 2.15
import "qrc:/"

BlueSquare {
    id: square
    property int coord: 8
    x: coord
    y: coord
    Keys.onLeftPressed: square.x -= 4
    Keys.onRightPressed: square.x += 4
    Keys.onDownPressed: square.y += 4
    Keys.onUpPressed: square.y -= 4
    Keys.onPressed: {
        switch(event.key) {
        case Qt.Key_Plus:
            square.scale += 0.2
            break;
        case Qt.Key_Minus:
            square.scale -= 0.2
            break;
        case Qt.Key_Enter:
            square.x = coord
            square.y = coord
            break;
        }
    }

    focus: true
}
