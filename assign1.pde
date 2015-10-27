/*
put the fighter, HP, treasure and random HP's number ,treasure's place
enemy moves from lifeside to rightside
put the background and roll it
*/


PImage fighter, enemy, hp ,treasure ,bg1 ,bg2;
int bgMoveX;
int hpNumber;
int treasureX ,treasureY;
int enemyMoveX;

void setup(){
    size(640,480);
    colorMode(RGB);
    
    fighter = loadImage("img/fighter.png");
          enemyMoveX=0;
    
    enemy = loadImage("img/enemy.png");
    hp = loadImage("img/hp.png");
          hpNumber=floor(random(1,200));
          
    treasure = loadImage("img/treasure.png");
          treasureX = floor(random(0,600));
          treasureY = floor(random(0,440));

    bg1 = loadImage("img/bg1.png");
    bg2 = loadImage("img/bg2.png");


}



void draw(){

  
//background  
    image(bg1,0+bgMoveX,0);
    image(bg2, -640+bgMoveX, 0);
    image(bg1, -1280+bgMoveX, 0);
    bgMoveX += 2;
    bgMoveX %= 1280;

//hp
    stroke(255,0 ,0);
    fill(255,0 ,0);
    rect(10, 10, hpNumber ,20);
    image(hp ,5 ,5);    

//treasure
    image(treasure,treasureX,treasureY);

//fighter
    image(fighter,580,200);
    
//enemy
    image(enemy ,enemyMoveX ,100);
    enemyMoveX +=3;
    enemyMoveX %=640;
       
}


/* end */
