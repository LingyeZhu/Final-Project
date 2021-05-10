class  Rect {
  int x, y, w, h;
  Rect(int x1, int y1) {
    
    x=x1;
    y=y1;
    w=19;
    h=11;
  }
  void show() {
    rectMode(CENTER);
    fill(255, 0, 0);
    noStroke();
    rect(x, y, w, h);
  }
}
