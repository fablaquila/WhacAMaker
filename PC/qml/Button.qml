// A simple button used in the game. This also contains animations to make the
// button appear/disappear
import QtQuick 2.3

AnimatedElement {
	id: container
	// The caption of the button
	property string caption: "Button"

	// The signal emitted when the button is clicked. The parameter i is the
	// name
	signal clicked(var i)

	Rectangle {
		id: rectangle
		border.color: "white"
		color: "white"
		anchors.fill: parent

		Text {
			id: buttonText
			text: container.caption
			anchors { horizontalCenter: rectangle.horizontalCenter; verticalCenter: rectangle.verticalCenter }
			font { pointSize: 24; bold: true }
		}
	}

	MouseArea {
		anchors.fill: parent
		onClicked: container.clicked(container.name)
	}
}
