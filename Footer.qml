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

    RowLayout {
        anchors.fill: parent

        FooterButton {
            id: leftButton
            Layout.preferredWidth: 150
            Layout.preferredHeight: 56
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
            text: qsTr("Cancel")
            buttonImage: "Assets/Buttons/blue_btn_171x42.png"
            onReleased: footer.leftButtonReleased()
        }

        PageIndicator {
            id: pageIndicator
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
        }

        FooterButton {
            id: rightButton
            Layout.preferredWidth: 150
            Layout.preferredHeight: 56
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
            buttonImage: "Assets/Buttons/green_btn_171x42.png"
            text: qsTr("Confirm")
            onReleased: footer.rightButtonReleased()
        }
    }
}