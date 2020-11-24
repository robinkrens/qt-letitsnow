/*
 *  Copyright 2020 Robin Krens <robin@robinkrens.nl>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  2.010-1301, USA.
 */

import QtQuick 2.0
import QtQuick.Layouts 1.1 as QtLayouts
import QtQuick.Controls 1.0 as QtControls

import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.extras 2.0 as PlasmaExtras

Item {
    	id: iconsPage
    	width: childrenRect.width
    	height: childrenRect.height
    	implicitWidth: pageColumn.implicitWidth
    	implicitHeight: pageColumn.implicitHeight
	property string cfg_item_color;

    	SystemPalette {
        	id: sypal
    	}

    	QtLayouts.ColumnLayout {

		id: pageColumn

        	anchors.left: parent.left
        	PlasmaExtras.Heading {
            	text: i18nc("Heading for colors", "Item shade color")
            	color: syspal.text
            	level: 3
   	}

	/* User can't specify an exact color, since i'm using
	 * gradients and alpha for colors */
	QtControls.ComboBox {
		id: dot
		model: ["red", "green", "blue"];
            	currentIndex: dot.model.indexOf(cfg_item_color)
            	onActivated: cfg_item_color = model[index]
	}

    }
}
