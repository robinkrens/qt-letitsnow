
function getSnowCount(countStr) {
	
	var cnt = 25;
	switch(countStr) {
		case "Few":
			cnt = 12;
			break;
		case "Medium":
			cnt = 25;
			break;
		case "Many":
			cnt = 50;
			break;
		}

	return cnt;
}

function getSnowSize(sizeStr) {
	
	var size;
	switch(sizeStr) {
		case "Tiny":
			size = 25;
			break;
		case "Small":
			size = 50;
			break;
		case "Big":
			size = 100;
			break;
		}

	return size;
}

function getSnowStyle(style) {
	
	var style;
	switch(styleStr) {
		case "Classic":
			break;
		case "Plain":
			break;
		case "Romantic":
			break;
		}

	return style;
}

function getFallingSpeed(speedStr) {

	var speedFunc;
	switch(speedStr) {
		case "Slow":
			speedFunc =  (Math.random() * 100) % 2 + 1; 
			break;
		case "Normal":
			speedFunc =  (Math.random() * 100) % 3 + 2; 
			break;
		case "Fast":
			speedFunc = (Math.random() * 100) % 6 + 4;
			break;
		}

	return speedFunc;
}
