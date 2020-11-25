
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

import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.2

import org.kde.plasma.plasmoid 2.0

import "../code/utils.js" as Utils

ApplicationWindow {
	
	id: root;

	property int dir: getRandomIntInclusive(0,1); /* could go either left or right */
	property int radius: Utils.getSnowSize(plasmoid.configuration.userSize); /* size of snowflake */
	property int swirl: getRandomIntInclusive(35,200); /* random falling 'swirl' */
	property int disposition: 0;
	property alias snowFlakeRotation: snowFlake.rotation;
	//property int rotationSpeed: (Math.random() * 100) % 3 + 1; /* falling rotation */
	property int rotationSpeed: getRandomIntInclusive(1,4);
	property int rotationDirection: getRandomIntInclusive(0,1);
	//property int fallingSpeed: (Math.random() * 100) % 3 + 2; 
	property int fallingSpeed: Utils.getFallingSpeed(plasmoid.configuration.userSpeed);

	//width: 80; height: 80;
	opacity: 0.5;
	color: "transparent";

	flags: Qt.WindowStaysOnTopHint 
		| Qt.FramelessWindowHint
		| Qt.WA_TransparentForMouseEvents
		| Qt.WA_TranslucentBackground 
		| Qt.X11BypassWindowManagerHint;

	/* Basic functions (fro, developer.mozilla.org) */
	function getRandomIntInclusive(min, max) {
  		min = Math.ceil(min);
  		max = Math.floor(max);
  		return Math.floor(Math.random() * (max - min + 1) + min);
	}

	Rectangle {
		
		id: snowFlake;
		
		anchors.fill: parent;
		radius: plasmoid.configuration.userStyle == "Plain" ? 50 : 0;
		color: plasmoid.configuration.userStyle == "Plain" ? "white" : "transparent";
		
		Image {
			id: snowFlakeImage;

			function setImage() {

				var imgSrc = "";
				switch(plasmoid.configuration.userStyle) {
					case "Classic":
					imgSrc = "../images/classic.png";
					break;
					case "Plain":
					break;
					case "Romantic":
					imgSrc = "../images/romantic.png";
					break;
				}	
				return imgSrc;
			}

			anchors.fill: parent;
			source: setImage(); 
			//source:  "../images/romantic.png";
		}

	}


}
