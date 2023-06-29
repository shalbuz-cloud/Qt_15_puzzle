import QtQuick 2.12
import Game 1.0;

GridView {
    id: root
//    model: 16
//    model: TilesModel{
//    }
    model: GameBoardModel {

    }

    cellHeight: height / root.model.dimension
    cellWidth: width / root.model.dimension

    delegate: Item {
        id: _backgroundDelegate
        width: root.cellWidth
        height: root.cellHeight

        visible: display !== root.model.hiddenElementValue  // Hide 16th element

        Tile {
            anchors.fill: _backgroundDelegate
            anchors.margins: 5
//            internalText.text: index
            displayText: display

            MouseArea {  // Перехват событий мыши
                anchors.fill: parent
                onClicked: {
                    root.model.move(index)
                }
            }
        }
    }
}
