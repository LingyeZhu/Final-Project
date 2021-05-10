class Run {
  int x, y;
  Run() {
    x=1;
  }
  void next() {
    x+=1;
  }
  void show() {
    fill(255, 255, 0);
    textSize(16);
    text("Run:"+x, width-60, 19);
  }
  void showf(){
    textSize(10);
    text("Total Num of Run:"+x, width/2-50, height/2+100);
  }
}
