
int startX, startY;
int startSize = 50;
color startColor, newColor, hiColor, currentColor;
boolean startButtonOver = false;

void setup() {
	size(500, 350);
	startX = 500/2;
	startY = 350/2;
	startColor = color(255);
	newColor = color(0);
	hiColor = color(125);
	currentColor = startColor;

}

void draw() {
	update(mouseX, mouseY);
	background(0);

/*	if (startButtonOver) {
		fill(hiColor);
	}
	else {
		fill(startColor);
	}*/
	fill(currentColor);
	rect(startX, startY, startSize, startSize);

}

void update(int X, int Y) {
	if(overButton(startX, startY, startSize, startSize)) {
		startButtonOver = true;
	}

}

void mouseClicked() {
	if (startButtonOver) {
		if (currentColor == startColor) {
			currentColor = newColor;
		}
		else {
			currentColor = startColor;
		}
	}
}

boolean overButton (int x, int y, int width, int height) {
	if (mouseX >= x && mouseX <= x+width && 
    	mouseY >= y && mouseY <= y+height) {
    	return true;
	}
	else {
    	return false;
	}
}

void doSomething() {

}
