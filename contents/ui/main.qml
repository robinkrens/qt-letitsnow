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
	
	property var snow: [];
	readonly property int snowCount: 100;
	readonly property int screenWidth: Qt.application.screens[0].width;
	readonly property int screenHeight: Qt.application.screens[0].height;
	
	Button {

		id: letitsnow;

        	anchors.centerIn: parent;
	        text: "Let it snow!";

		onClicked: {
			
			//var screenWidth = Qt.application.screens[0].width;
			//var screenHeight = Qt.application.screens[0].height;
			
			for (var i = 0; i < snowCount; i++) {
				
				var component = Qt.createComponent("snowWindow.qml");
				
				snow[i] = component.createObject(root);
				
				snow[i].x = Math.random() * screenWidth;
				snow[i].y = Math.random() * screenHeight;
				
				snow[i].showMaximized();
			}
			
			snowFalling.running = true;
        	}
	}

	Timer {

		id: snowFalling

		function test() {
		}

        	interval: 50; running: false; repeat: true
		
		onTriggered: {
			
			for (var i = 0; i < snowCount; i++) {
				if(snow[i].dir == 0) {
					snow[i].x += 2;
				} else {
					snow[i].x -= 2;
				}
				
				if (snow[i].disposition++ % snow[i].swirl == 0) {
					snow[i].dir = !snow[i].dir;
				}

				if(snow[i].x > screenWidth) {
					snow[i].x = 0;
				} else if (snow[i].x < 0) {
					snow[i].x = 1440;
				}

				snow[i].y += 2;

				if (snow[i].y > screenHeight) {
					snow[i].y = 0;
				}
			}
		}
    	}

}
