// Copyright (C) 2018 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQml
import QtQml.WorkerScript
import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window

ApplicationWindow {
    id: window
    width: 400
    height: 500
    visible: true

    Button {
        text: "Hello world!!!你好，世界！！！"
    }

    ComboBox {
        anchors.centerIn: parent

        // As currentValue was added in 2.14, the versioned import above
        // should cause this property to be used, but instead an error is produced:
        // "Cannot override FINAL property"
        // property int currentValue: 0
    }
}