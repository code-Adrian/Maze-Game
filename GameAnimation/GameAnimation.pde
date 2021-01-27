//Adrian Bernacki
//20088308
// ========= Description and important information for teachers ============//
//The underneath code produces a game where the player
//is meant to avoid red lines and reach the finish point which is a green square.
//If you're a teacher please remove lines inside the "nocheat" method
//( line 57 - 60 ). This will help the teacher to pass the levels faster
//  and see final animation at the end. 



//Creation of this game would not be possible if not without the help of the original processing website. https://processing.org/reference
// I also looked on youtube to get help creating moving objects (ellipse). www.youtube.com

 
 //Gametype variables
  int red = color(255, 0, 0);
  int level1 = color(0, 0, 255);
  int level2 = color(0, 255, 0);
  int level3 = color(0, 254, 0);
  int level4 = color(0, 253, 0);
  int level5 = color(0, 252, 0);
  int Gametype = 0;
//Level 2 Variables
float obs;
float obspeed = 5;
//Level 3 Variables
float obs2;
float obs2speed = 8;
float obs3;
float obs3speed = 8;
float obs4;
float obs4speed = 8;
float obs5;
float obs5speed = 12;
//Level 4 Variables
float obs6;
float obs6speed = 2;
float obs7;
float obs7speed = 5;
float obs8;
float obs8speed = 5;
float obs9;
float obs9speed = 5;
float obs10;
float obs10speed = 5;
// Void setup is used to create the game size.
  void setup() {
  size(800,600);
 
  }

  //The no cheat method creates a border around the game so the player cannot cheat to the finish line.
   void nocheat() {
    stroke(255, 0, 0);
    strokeWeight(14);
    line(0, 0, 800, 0);
    line(0, 0, 0, 600);
    line(0, 600, 800, 600);
    line(800, 0, 800, 800);
    //Stroke 0 is here for the above stroke not to affect the other methods underneath.
    strokeWeight(0);
  }


 //Here is where we build the games on each level. We then import these methods in the Gametype in draw() method.
   void Game1() {
     
    stroke(255, 0, 0);
    strokeWeight(4);
    //A for loop is introduced here to create a rectangle like red space for the player to avoid.
    for (int i = 70; i < 200; i++) {
      line(0, i, 750, i);
    }
    //We create a for loop here aswell to make a second rectangle red space for the player to avoid in game 1.
    for (int i = 250; i <= 400; i++) {
      line(800, i, 50, i);
    }
    //Stroke 0 is here for the above stroke not to affect the other methods underneath.
    strokeWeight(0);
  }
  //Game 2
  void Game2() {
   
     stroke(255, 0, 0);
    strokeWeight(4);
    // Here we create a while loop to create vertical lines for the player to go through with difficulty
    int i = 20;
    //We tell the loop to stop drawing lines when it reaches the width of the program
    while (i <= width){
    //We create one line with a certain dimension.
  line(i,80,i,450);
  i++;
  //i + 20 is going to add 20 to the 'x' value each time it loops to the width. 
  //This is whats going to draw lots of lines till the width.
  i = i +20;
    }
    //We create a ellipse for extra dificulty when passing through the lines.
    //The variables for moving objects are stored on the top of the program for less confusion.
    ellipse(obs,200,100,40);
    //obspeed is going to add speed to the floating object
   obs = obs + obspeed;
   //This is where the ellipse reaches the width of the program so it bounces back where it starts.
  if(obs > width){
   //For extra difficulty when it reaches the width, the speed will increase to 5
  obspeed = -15;        
}
 //This is going to create a loop for us, this is where the ellipse reaches where it started and bounces back again to the width
  else if(obs < 0){
  obspeed = 8;
}
    strokeWeight(0);
  }
  
  //Game 3
  // This is the level where ellipses from different sides get moved around as obstacles.
  void Game3(){
    //We fill in the ellipse as red, as the obstacle.
    fill(255,0,0);
    //obs2 is the X axis as it is moved from left to right in a loop.
  ellipse(obs2,300,50,50);
  obs2 = obs2 + obs2speed;
 //If the ellipse is greater than the width the ball will decrease backwards by -10. which will make the ball move from right to left.
    if(obs2 > width){
  obs2speed = -10;        
}
// If the ball is less than 0 which is the really left hand side it will increase again making it going back from left to right. This finishes off the creation of a loop for us.
  else if(obs2 < 0){
  obs2speed = 7;
}
  ellipse(400,obs3,50,50);
  obs3 = obs3 + obs3speed;
    if(obs3 > height){
  obs3speed = -10;        
}
  else if(obs3 < 0){
  obs3speed = 7;
}
  ellipse(obs4,500,80,80);
  obs4 = obs4 + obs4speed;
    if(obs4 > width){
  obs4speed = -10;        
}
  else if(obs4 < 0){
  obs4speed = 12;
}
  ellipse(700,obs5,80,80);
  obs5 = obs5 + obs5speed;
    if(obs5 > height){
  obs5speed = -10;        
}
  else if(obs5 < 0){
  obs5speed = 20;
  }
  }
  //Game 4 where red is everywhere and player has to go through black moving circles to reach certain parts to achieve finish point.
void Game4(){
fill(255,0,0);
rect(0,70,800,400);
stroke(255,0,0);
strokeWeight(20);
line(500,80,500,600);
line(300,0,300,300);
line(150,25,150,600);
strokeWeight(13);
line(75,0,75,300);
//Reset the above strokeWeight so it doesnt affect other ones.
strokeWeight(0);
fill(0,0,0);
  ellipse(600,obs6,50,50);
  obs6 = obs6 + obs6speed;
    if(obs6 > height){
  obs6speed = -2;        
}
  else if(obs6 < 0){
  obs6speed = 2;
  }
    ellipse(400,obs7,50,50);
  obs7 = obs7 + obs7speed;
    if(obs7 > height){
  obs7speed = -2;        
}
 else if(obs7 < 0){
  obs7speed = 2;
  }
    ellipse(200,obs8,48,48);
  obs8 = obs8 + obs8speed;
    if(obs8 > height){
  obs8speed = -2;        
}
  else if(obs8 < 0){
  obs8speed = 2;
  }
      ellipse(115,obs9,43,43);
  obs9 = obs9 + obs9speed;
    if(obs9 > height){
  obs9speed = -2;        
}
  else if(obs9 < 0){
  obs9speed = 2;
  }
      ellipse(35,obs10,40,40);
  obs10 = obs10 + obs10speed;
    if(obs10 > height){
  obs10speed = -2;        
}
  else if(obs10 < 0){
  obs10speed = 2;
  }
}
//Victory is our finish, I introduce a nested loop here to create a grid-like 
//background for some nice animated background .
  void Victory(){
    //The top for loop is for the vertical squares to be created.
    for(int y = 0; y < height ;y = y + 20){
      //The bottom for loop is for the horizontal squares to be created.
     for(int x = 0; x < width ;x = x + 20){
       strokeWeight(1);
       //This stroke is for the outline of squares to be neon color.
       stroke(0,255,255);
       //Fill is for the squares to kind of having black and white flaming effect for extra decoration.
      fill(random(50));
       rect(x,y,15,15);
       
     }
    
    }
    textSize(90);
       fill(5,255,5);
      text("VICTORY!!", 200, 200);
      textSize(75);
      text("Thanks for playing :)", 20, 300);
      stroke(0);
      strokeWeight(0);
  }
  //The player is the cursor the player has. 
   void player() {
    fill(255, 255, 255);
    ellipse(mouseX, mouseY, 10, 10);
    //To reset the above fill of ellipse, so it wont effect other.
    fill(0, 0, 0);
  }


 // Here we actually implement the methods and add green finish rectangles. 
  void draw() {
    background(0);
    if (Gametype == 0) {
      player();
      mousePressed();
      fill(0, 0, 255);
      rect(10, 10, 50, 50);
      fill(255, 5, 0);
      textSize(30);
      text("Welcome to Adrian's Maze Game!", 150, 200);
      text("move your mouse to the blue ", 150, 250);
      text("rectangle to start the game", 150, 300);
    } 

    //The "get" method reads the color of any pixel which in this case is blue which makes the game start
    if (get(mouseX, mouseY) == level1) {
      Gametype = 1; // If it touches the blue, game can start.
    }
    
    if (Gametype == 1) {
      //The player() is the circle the player has when playing the game. 
      player();
      //Game 1 is the method that contains all the essential code to create the first level. It gets imported from above off the program.
      Game1();
      //The no cheat is has 4 lines being drawn to the level for anti-cheating purposes.
      nocheat();
      //This is the finish point of the level where the player touches the green square (rect) to move onto the second level.
      fill(0, 255, 0);
      rect(700, 500, 50, 50);
    } 

    
    if (get(mouseX, mouseY) == level2) {
      Gametype = 2;
    }
    
    if (Gametype == 2) {
      player();
      Game2();
      nocheat();
      fill(0, 254, 0);
      
      rect(10, 10, 50, 50);
      strokeWeight(0);
    } 
    
    if (get(mouseX, mouseY) == level3) {
      Gametype = 3;
    }
    if (Gametype == 3) {
      player();
      Game3();
      nocheat();
      fill(0, 253, 0);
      rect(700, 500, 50, 50);
      
    } 
    
    if (get(mouseX, mouseY) == level4) {
      Gametype = 4;
    }
    
    if (Gametype == 4) {
      player();
      Game4();
      nocheat();
      fill(0, 252, 0);
      rect(13, 13, 50, 50);
      
    } 
if (get(mouseX, mouseY) == level5) {
      Gametype = 5;
    }
    
    if (Gametype == 5) {
      player();
      //This is the victory level when the player wins, Animation is displayed from imported method.
      Victory();
     
      
    } 


    
    if (get(mouseX, mouseY) == red) {
      Gametype = 10;
    }
    // This is the death screen.
    if (Gametype == 10) {
      background(0);
      fill(255, 5, 0);
      textSize(30);
      text("You lose...", 150, 200);
      text("Press 'r' to restart the game.", 250, 300);
    } 
  }
  // This gives us the option to restart the game after losing.
  void keyReleased() {
    if (key == 'r') {
      Gametype = 0;
    }
  }

  

 
