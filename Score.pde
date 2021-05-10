class Score {
  int x, y;
  Score() {
    x=width/2-30;
    y=19;
  }
  void show() {
    fill(255, 0, 0);
    textSize(16);
    text("Score:"+s, x, y);
  }
}
