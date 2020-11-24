
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
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

ApplicationWindow {
	
	id: root;
	
	width: 30; height: 30;
	x: 500; y: 500;
	//color: "transparent";
	opacity: 0.5;
	title: qsTr("Snowy")

	flags: Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint | Qt.WA_TransparentForMouseEvents | Qt.WA_TranslucentBackground | Qt.X11BypassWindowManagerHint;


	//flags: Qt.WA_TranslucentBackground | Qt.X11BypassWindowManagerHint | Qt.WA_TransparentForMouseEvents;

	//flags: Qt.WA_TranslucentBackground | Qt.WA_TransparentForMouseEvents| Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint;

	//flags: Qt.WindowStaysOnTopHint | Qt.FramelessWindowHint | Qt.WA_TransparentForMouseEvents | Qt.WA_TranslucentBackground;
	//color: "transparent";

    //		Text {
    //	    	anchors.centerIn: parent
    //	    	color: "red";
    //	    	text: qsTr("Hello World.")
    //		}
}
