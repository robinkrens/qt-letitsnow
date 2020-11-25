## KDE Plasmoid Let it snow

Let it snow on your desktop! This widget works like an overlay: snow flakes will
always be on top and continue to fall, no matter what you are doing!   

Support:
* Size, speed, count and style can be changed dynamically

Implementation details:
* Uses special flags of X11 
* Just QML; no additional install instructions required
* Since MouseEvents can't be masked with QML this implementation
is a bit different than what is possible with a QT C++ plugin.

I welcome user art for cooler and better snow flakes!

I also welcome ideas for tweaking parameters. There is a lot, i.e. falling
speed, speed rotation, direction, swirling speed of snow flakes, opacity, random
size calculation, etc...

In case there is interest, I can make a more efficient implememtation in C++.

### Install
Should be installable through the KDE Store
You can also copy this repository in ./local/share/plasma/plasmoids/

Here are some screenshots: 

![Screenshot](https://robinkrens.nl/plasmoids/classic.png "screenshot")

Classic mode

![Screenshot](https://robinkrens.nl/plasmoids/romantic.png "screenshot")

Different snow flake, smaller average size
