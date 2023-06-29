import QtQuick 2.12

Rectangle {
    id: root
    color: "lightgreen"

    // Создаем новое свойство
    property string displayText: ""
    // Создаем alias для доступа к существующему свойству извне
    property alias internalText: _firstText

    radius: 10

    border {
        color: "black"
        width: 1
    }

    Text {
        id: _firstText

//        x: root.width / 2 - width / 2
//        y: root.height / 2 - height / 2
//        anchors {
//            left: root.left
//            leftMargin: 30
//        }
        anchors.centerIn: root

        text: root.displayText
        font {
            pointSize: Math.min(root.width, root.height) / 3
            bold: true
        }
    }
}
