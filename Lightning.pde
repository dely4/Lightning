int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int lightning_color;

void setup(){

	strokeWeight(5);
 	size(300,300);
 	background(255,255,255);
 	lightning_color = 0;
}

void draw(){		
	stroke(lightning_color);
	endX = startX + (int)(Math.random() * 10);
	endY = startY + (int)(Math.random() * 20 - 9);
	line(startX,startY,endX,endY);
	startX = endX;
	startY = endY;
	
}

void mousePressed(){
	lightning_color = (int)(Math.random()*256);
	background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	startX = (int)(Math.random()*300);
	startY = (int)(Math.random()*300);
	endX = (int)(Math.random()*300);
	endY = (int)(Math.random()*300);
}

