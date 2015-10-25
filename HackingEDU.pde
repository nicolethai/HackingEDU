
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
//String text1= "";
//boolean answered = false; 
//void setup(){
//  size(800,800);
//  background(0);
//}

//void draw(){
  
//  if (answered == true){
//    background(252);
//    text("restock on toilet paper", 100,100);
//  }
//    else{
//      background(0);
//    }
//    fill(255);
//    rect(185,170,140,45);
//    fill(0);
//  textSize(20);
//  text("toilet paper", 200,200);
//  if(mouseX>185&& mouseX<325){
//    if(mouseY>170&& mouseY<215){
//      fill(255);
//      text("Enter quantity", 350, 200);
//    }
//  }
//    fill(0);
//  rect(500,200,140,45);
//  fill(255);
//  println(text1);
//  //text(text1, 500,200);
//  printAmt();
      
//  }
  
  
  
//void keyPressed(){
//  if(key== CODED){
//    if (keyCode== LEFT){
//      println("left");
//    }
//    else {
//      println("unknown");
//    }
//  }
//  else if (key==RETURN ||key==ENTER){
//    println("ENTER");
//    if(text1.equals("abcd")){
//      println("Yes");
//      answered = true;
//      text1="";
//    }

//    else{
//      answered = false;
//    }
//  }
//  else{
//    text1+=key;
//  }

//}

//void printAmt() {
//  text(text1+" rolls", 500,200);
//}
  
