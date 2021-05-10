import processing.sound.*;
Rect rects, rects2, rects3, rects4, rects5, rects6, rects7, rects8, rects9, rects10;
Rect rects11, rects12, rects13, rects14, rects15, rects16, rects17, rects18, rects19, rects20;
Rect rects21, rects22, rects23, rects24, rects25, rects26, rects27, rects28, rects29, rects30;
Rect rects31, rects32;
SoundFile music;
SoundFile hit;
int x=100, y=100;
int w=20, h=12;
int xpos;
int adj=0;
int s=0;
float bx, by;
float xsped=2.9, ysped=7.2;
float backr, backg, backb;
int index=1;
boolean start;
boolean r1=true, r2=true, r3=true, r4=true, r5=true, r6=true, r7=true, r8=true, r9=true, r10=true;
boolean r11=true, r12=true, r13=true, r14=true, r15=true, r16=true, r17=true, r18=true, r19=true, r20=true;
boolean r21=true, r22=true, r23=true, r24=true, r25=true, r26=true, r27=true, r28=true, r29=true, r30=true;
boolean r31=true, r32=true;
Score score;
Run run;
void setup() {
  size(350, 450);
  xpos=int(random(width));
  bx=xpos;
  by=height-40;
  music = new SoundFile(this, "music.mp3");
  hit = new SoundFile(this, "impact.mp3");
  score=new Score();
  run=new Run();
  music.loop();
  rectMode(CENTER);
  //first row
  rects=new Rect(x, y);
  rects2=new Rect(x+w, y);
  rects3=new Rect(x+w*2, y);
  rects4=new Rect(x+w*3, y);
  rects5=new Rect(x+w*4, y);
  rects6=new Rect(x+w*5, y);
  rects7=new Rect(x+w*6, y);
  rects8=new Rect(x+w*7, y);
  //2nd
  rects9=new Rect(x, y+h);
  rects10=new Rect(x+w, y+h);
  rects11=new Rect(x+w*2, y+h);
  rects12=new Rect(x+w*3, y+h);
  rects13=new Rect(x+w*4, y+h);
  rects14=new Rect(x+w*5, y+h);
  rects15=new Rect(x+w*6, y+h);
  rects16=new Rect(x+w*7, y+h);
  //3rd
  rects17=new Rect(x, y+h*2);
  rects18=new Rect(x+w, y+h*2);
  rects19=new Rect(x+w*2, y+h*2);
  rects20=new Rect(x+w*3, y+h*2);
  rects21=new Rect(x+w*4, y+h*2);
  rects22=new Rect(x+w*5, y+h*2);
  rects23=new Rect(x+w*6, y+h*2);
  rects24=new Rect(x+w*7, y+h*2);
  //4th
  rects25=new Rect(x, y+h*3);
  rects26=new Rect(x+w, y+h*3);
  rects27=new Rect(x+w*2, y+h*3);
  rects28=new Rect(x+w*3, y+h*3);
  rects29=new Rect(x+w*4, y+h*3);
  rects30=new Rect(x+w*5, y+h*3);
  rects31=new Rect(x+w*6, y+h*3);
  rects32=new Rect(x+w*7, y+h*3);
}

void draw() {

  
  background(0, 255, 255);
  score.show();
  run.show();
  strokeWeight(1);
  noStroke();
  if (r1) {
    rects.show();
  }
  if (r2) {
    rects2.show();
  }
  if (r3) {
    rects3.show();
  }
  if (r4) {
    rects4.show();
  }
  if (r5) {
    rects5.show();
  }
  if (r6) {
    rects6.show();
  }
  if (r7) {
    rects7.show();
  }
  if (r8) {
    rects8.show();
  }
  if (r9) {
    rects9.show();
  }
  if (r10) {
    rects10.show();
  }
  if (r11) {
    rects11.show();
  }
  if (r12) {
    rects12.show();
  }
  if (r13) {
    rects13.show();
  }
  if (r14) {
    rects14.show();
  }
  if (r15) {
    rects15.show();
  }
  if (r16) {
    rects16.show();
  }

  if (r17) {
    rects17.show();
  }
  if (r18) {
    rects18.show();
  }
  if (r19) {
    rects19.show();
  }
  if (r20) {
    rects20.show();
  }
  if (r21) {
    rects21.show();
  }
  if (r22) {
    rects22.show();
  }
  if (r23) {
    rects23.show();
  }
  if (r24) {
    rects24.show();
  }

  if (r25) {
    rects25.show();
  }
  if (r26) {
    rects26.show();
  }
  if (r27) {
    rects27.show();
  }
  if (r28) {
    rects28.show();
  }
  if (r29) {
    rects29.show();
  }
  if (r30) {
    rects30.show();
  }
  if (r31) {
    rects31.show();
  }
  if (r32) {
    rects32.show();
  }
  
  //ball
  fill(0,0,255,191);
  ellipse(bx, by, 20, 20);


  //paddle
  strokeWeight(5);
  stroke(0,0,0);
  line(xpos-40, height-30, xpos+40, height-30);

  if (start) {
    xpos=mouseX;
    bx+=xsped;
    by-=ysped;
  }

  //check if the ball need to bounced

  if (bx<0||bx>width) {
    xsped*=-1;
  }
     if (by<0||abs(bx-xpos)<40 && abs(by-(height-30))<10) {
    ysped*=-1;
  }

  //impact
  if (r1) {
    if (abs(bx-x)<(w/2+adj)&&abs(by-y)<(h/2+adj)) {
      //xsped*=-1;
      ysped*=-1;
      s+=5;
      hit.play();
      r1=false;
    }
  }

  if (r2) {
    if (abs(bx-(x+w))<(w/2+adj)&&abs(by-y)<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r2=false;
    }
  }
  if (r3) {
    if (abs(bx-(x+w*2))<(w/2+adj)&&abs(by-y)<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r3=false;
    }
  }
  if (r4) {
    if (abs(bx-(x+w*3))<(w/2+adj)&&abs(by-y)<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r4=false;
    }
  }
  if (r5) {
    if (abs(bx-(x+w*4))<(w/2+adj)&&abs(by-y)<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r5=false;
    }
  }
  if (r6) {
    if (abs(bx-(x+w*5))<(w/2+adj)&&abs(by-y)<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r6=false;
    }
  }
  if (r7) {
    if (abs(bx-(x+w*6))<(w/2+adj)&&abs(by-y)<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r7=false;
    }
  }
  if (r8) {
    if (abs(bx-(x+w*7))<(w/2+adj)&&abs(by-y)<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r8=false;
    }
  }


  if (r9) {
    if (abs(bx-x)<(w/2+adj)&&abs(by-(y+h))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r9=false;
    }
  }
  if (r10) {
    if (abs(bx-(x+w))<(w/2+adj)&&abs(by-(y+h))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r10=false;
    }
  }
  if (r11) {
    if (abs(bx-(x+w*2))<(w/2+adj)&&abs(by-(y+h))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r11=false;
    }
  }
  if (r12) {
    if (abs(bx-(x+w*3))<(w/2+adj)&&abs(by-(y+h))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r12=false;
    }
  }

  if (r13) {
    if (abs(bx-(x+w*4))<(w/2+adj)&&abs(by-(y+h))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r13=false;
    }
  }
  if (r14) {
    if (abs(bx-(x+w*5))<(w/2+adj)&&abs(by-(y+h))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r14=false;
    }
  }
  if (r15) {
    if (abs(bx-(x+w*6))<(w/2+adj)&&abs(by-(y+h))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r15=false;
    }
  }
  if (r16) {
    if (abs(bx-(x+w*7))<(w/2+adj)&&abs(by-(y+h))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r16=false;
    }
  }


  if (r17) {
    if (abs(bx-x)<(w/2+adj)&&abs(by-(y+h*2))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r17=false;
    }
  }
  if (r18) {
    if (abs(bx-(x+w))<(w/2+adj)&&abs(by-(y+h*2))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r18=false;
    }
  }
  if (r19) {
    if (abs(bx-(x+w*2))<(w/2+adj)&&abs(by-(y+h*2))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r19=false;
    }
  }
  if (r20) {
    if (abs(bx-(x+w*3))<(w/2+adj)&&abs(by-(y+h*2))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r20=false;
    }
  }
  if (r21) {
    if (abs(bx-(x+w*4))<(w/2+adj)&&abs(by-(y+h*2))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r21=false;
    }
  }
  if (r22) {
    if (abs(bx-(x+w*5))<(w/2+adj)&&abs(by-(y+h*2))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r22=false;
    }
  }
  if (r23) {
    if (abs(bx-(x+w*6))<(w/2+adj)&&abs(by-(y+h*2))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r23=false;
    }
  }
  if (r24) {
    if (abs(bx-(x+w*7))<(w/2+adj)&&abs(by-(y+h*2))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r24=false;
    }
  }


  if (r25) {
    if (abs(bx-x)<(w/2+adj)&&abs(by-(y+h*3))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r25=false;
    }
  }
  if (r26) {
    if (abs(bx-(x+w))<(w/2+adj)&&abs(by-(y+h*3))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r26=false;
    }
  }
  if (r27) {
    if (abs(bx-(x+w*2))<(w/2+adj)&&abs(by-(y+h*3))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r27=false;
    }
  }
  if (r28) {
    if (abs(bx-(x+w*3))<(w/2+adj)&&abs(by-(y+h*3))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r28=false;
    }
  }
  if (r29) {
    if (abs(bx-(x+w*4))<(w/2+adj)&&abs(by-(y+h*3))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r29=false;
    }
  }
  if (r30) {
    if (abs(bx-(x+w*5))<(w/2+adj)&&abs(by-(y+h*3))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r30=false;
    }
  }
  if (r31) {
    if (abs(bx-(x+w*6))<(w/2+adj)&&abs(by-(y+h*3))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r31=false;
    }
  }
  if (r32) {
    if (abs(bx-(x+w*7))<(w/2+adj)&&abs(by-(y+h*3))<(h/2+adj)) {
      ysped*=-1;
      s+=5;
      hit.play();
      r32=false;
    }
  }

  //level up 
  if (index==1) {
    if (r1==false&&r2==false&&r3==false&&r4==false&&r5==false&&r6==false&&r7==false&&r8==false&&r9==false&&r10==false) {
      if (r11==false&&r12==false&&r13==false&&r14==false&&r15==false&&r16==false&&r17==false&&r18==false&&r19==false&&r20==false) {
        if (r21==false&&r22==false&&r23==false&&r24==false&&r25==false&&r26==false&&r27==false&&r28==false&&r29==false&&r30==false) {
          if (r31==false&&r32==false) {
            start=false;
            index=2;
            bx=xpos;
            by=height-40;
            xsped=4.5;
            ysped=9;
            r1=true; 
            r2=true; 
            r3=true; 
            r4=true; 
            r5=true;
            r6=true; 
            r7=true; 
            r8=true; 
            r9=true; 
            r10=true; 
            r11=true;
            r12=true; 
            r13=true; 
            r14=true; 
            r15=true; 
            r16=true; 
            r17=true; 
            r18=true; 
            r19=true; 
            r20=true; 
            r21=true; 
            r22=true;
            r23=true; 
            r24=true; 
            r25=true; 
            r26=true; 
            r27=true; 
            r28=true; 
            r29=true; 
            r30=true; 
            r31=true; 
            r32=true;
          }
        }
      }
    }
  }
  if (index==2) {
    if (r1==false&&r2==false&&r3==false&&r4==false&&r5==false&&r6==false&&r7==false&&r8==false&&r9==false&&r10==false) {
      if (r11==false&&r12==false&&r13==false&&r14==false&&r15==false&&r16==false&&r17==false&&r18==false&&r19==false&&r20==false) {
        if (r21==false&&r22==false&&r23==false&&r24==false&&r25==false&&r26==false&&r27==false&&r28==false&&r29==false&&r30==false) {
          if (r31==false&&r32==false) {
            start=false;
            bx=xpos;
            by=height-40;
            index=3;
            xsped=7;
            ysped=11;
            r1=true; 
            r2=true; 
            r3=true; 
            r4=true; 
            r5=true;
            r6=true; 
            r7=true; 
            r8=true; 
            r9=true; 
            r10=true; 
            r11=true;
            r12=true; 
            r13=true; 
            r14=true; 
            r15=true; 
            r16=true; 
            r17=true; 
            r18=true; 
            r19=true; 
            r20=true; 
            r21=true; 
            r22=true;
            r23=true; 
            r24=true; 
            r25=true; 
            r26=true; 
            r27=true; 
            r28=true; 
            r29=true; 
            r30=true; 
            r31=true; 
            r32=true;
          }
        }
      }
    }
  }
  if (index==3) {
    if (r1==false&&r2==false&&r3==false&&r4==false&&r5==false&&r6==false&&r7==false&&r8==false&&r9==false&&r10==false) {
      if (r11==false&&r12==false&&r13==false&&r14==false&&r15==false&&r16==false&&r17==false&&r18==false&&r19==false&&r20==false) {
        if (r21==false&&r22==false&&r23==false&&r24==false&&r25==false&&r26==false&&r27==false&&r28==false&&r29==false&&r30==false) {
          if (r31==false&&r32==false) {
            start=false;
            xsped=0;
            ysped=0;
            fill(255);
            textSize(40);
            backr=random(255);
            backg=random(255);
            backb=random(255);
            text("Win", width/2-40, height/2);
            run.showf();
            music.stop();
          }
        }
      }
    }
  }
  fill(0, 0, 0);
  textSize(16);
  text("Level:"+index, 4, 19);

  if (by>height) {
    fill(150, 50, 200);
    textSize(20);
    text("Fails, press R to continue", width/2-120, height/2-0);
  }

}
void keyPressed() {
  if (key=='r'||key=='R') {
    start=false;
    bx=xpos;
    by=height-40;
    run.next();

  }
}
void mousePressed() {
  start=true;
}
