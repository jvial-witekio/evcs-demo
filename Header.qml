import QtQuick 2.8
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import App 1.0

Item {

    id: header
    signal openInfo
    signal openMap
    signal openWarning

// Left Positioner
    RowLayout
    {
        anchors.left: parent.left
        height: 50
        Image {
            Layout.preferredWidth: 41
            Layout.preferredHeight: 31
            Layout.leftMargin: 20
            source: "Assets/Icons/EVCS_Qt_logo_41x31.png"
        }

        Label {
            Layout.preferredWidth: 300
            Layout.preferredHeight: 31
            Layout.leftMargin: 10
            verticalAlignment: Text.AlignVCenter
            color: "#ffffff"
            text: qsTr("Electric charging station in a RUNC container")
            font.pixelSize: Variables.fontHeader
            font.bold: true
        }
    }

// Right Positioner

    RowLayout
    {
        anchors.right: parent.right
        height: 50
        spacing: 15


        Button
        {
            Layout.preferredWidth: 31
            Layout.preferredHeight: 31
            background: Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "Assets/Icons/EVCS_icon_map_31x31.png"
            }
            flat: true
            onClicked: header.openMap();
        }


        Button
        {
            Layout.preferredWidth: 38
            Layout.preferredHeight: 31
            background: Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "Assets/Icons/EVCS_icon_attention_30x31.png"
            }
            flat: true
            onClicked: header.openWarning();
        }

        Button
        {
            Layout.preferredWidth: 30
            Layout.preferredHeight: 31
            Layout.rightMargin: 20
            background: Image {
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
                source: "Assets/Icons/EVCS_icon_info_30x31.png"
            }
            flat: true
            onClicked: header.openInfo();
        }
    }
}
