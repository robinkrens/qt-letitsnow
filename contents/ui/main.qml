/*
 *   Copyright 2020 Robin Krens <robin@robinkrens.nl>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.6
import QtQuick.Layouts 1.0
import QtQuick.Window 2.2

//import org.kde.plasma.plasmoid 2.0 as Plasmoid
//import org.kde.plasma.core 2.0 as PlasmaCore
//import org.kde.plasma.components 2.0 as PlasmaComponents

import QtQuick 2.3
import QtQuick.Controls 1.2

Item {
	id: root;
	Button {
        	anchors.centerIn: parent;
	        text: "Let it snow!";

		onClicked: {
			var snow = [];
			for (var i = 0; i < 10; i++) {
				
				snow[i] = Qt.createComponent("snowWindow.qml");
				var snowWindow = snow[i].createObject(root);
				snowWindow.x = Math.random() * 500;
				snowWindow.y = Math.random() * 500;
				//snowWindow.opacity = 0.9;
				//snowWindow.flags = Qt.WA_TransparentForMouseEvents | Qt.X11BypassWindowManagerHint;

				//snowWindow.flags =  Qt.WA_TransparentForMouseEvents| Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint;
				snowWindow.showMaximized();
			}
        }
    }
}
