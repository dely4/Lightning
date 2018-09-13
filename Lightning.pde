int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int background_color = 0;
int background_color_changer = 5;

void setup(){

	strokeWeight(5);
 	size(300,300);
 	background(background_color);

}

void draw(){
	if(background_color >= 255){
		background_color_changer *= -1;
	}
	background_color += background_color_changer;
	background(background_color);
	while(endX <= 300){
		stroke((int)(Math.random()*256),(int)(Math.random()*255),(int)(Math.random()*255));
		endX = startX + (int)(Math.random() * 10);
		endY = startY + (int)(Math.random() * 20 - 9);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}
}

void mousePressed(){
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
	background(0);
}

