import QtQuick 2.9
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
    id: footer

    signal leftButtonReleased
    signal rightButtonReleased

    property alias leftButtonText: leftButton.text
    property alias leftButtonVisible: leftButton.opacity
    property alias leftButtonEnabled: leftButton.enabled
    property alias rightButtonText: rightButton.text
    property alias rightButtonVisible: rightButton.opacity
    property alias rightButtonEnabled: rightButton.enabled
    property alias pageIndicatorcurrentIndex: pageIndicator.currentIndex
    property alias pageIndicatorcount: pageIndicator.count
    property alias pageIndicatorVisible: pageIndicator.opacity

    RowLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: 64
        FooterButton {
            id: leftButton
            Layout.preferredWidth: 150
            Layout.preferredHeight: 56
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
            text: qsTr("Cancel")
            buttonImage: "Assets/Buttons/blue_btn_171x42.png"
            onReleased: footer.leftButtonReleased()
        }

        PageIndicator {
            id: pageIndicator
            opacity: 0
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
        }

        FooterButton {
            id: rightButton
            Layout.preferredWidth: 150
            Layout.preferredHeight: 56
            Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
            buttonImage: "Assets/Buttons/green_btn_171x42.png"
            text: qsTr("Confirm")
            onReleased: footer.rightButtonReleased()
        }
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 20
        height: 220
        y:70
        radius: 2
        color: "#800d2e50"

        Image {
            id: logofmu
            x: 0
            anchors.horizontalCenter: parent.horizontalCenter
            width: 280
            visible: true
            fillMode: Image.PreserveAspectFit
            source: "Assets/Icons/EVCS_FMU_logo.png"
        }

        Text {
            id: welcome
            height: parent.height
            width: parent.width - 10
            color: "#ffffff"
            wrapMode: Text.WordWrap
            text: "Welcome to the third version of the electrical vehicle charging station. This version supports multiple languages and includes support for credit cards. It is the last version of this demo."
            x: 10
            y: 60
            font.pointSize: 12
        }

        Text {
            id: updatingmessage
            color: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Updating to a new version in 2 minutes!"
            y: 145
            font.pointSize: 12
        }

        Text {
            id: step
            color: "#ffffff"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 10
            anchors.bottomMargin: 5
            text: "Step 3/3"
            font.pointSize: 12
        }

        Rectangle {
            y: 180
            width: 400
            anchors.horizontalCenter: parent.horizontalCenter
            id: control
            height: 20
            z: 100
            radius: 10
            border.color: "#00aeea"
            visible: true
            Item {
                anchors.fill: parent
                anchors.margins: 3
                clip: true
                Row {
                    z: 10
                    Repeater {
                        Rectangle {
                            radius: 2
                            color: index % 2 ? "#ffffff" : "#00aeea"
                            width: 20 ; height: control.height
                        }
                        model: control.width / 20 + 2
                    }
                    XAnimator on x {
                        from: -40 ; to: 0
                        loops: Animation.Infinite
                        duration:350
                        running: true
                    }
                }
            }

        }


    }
}
