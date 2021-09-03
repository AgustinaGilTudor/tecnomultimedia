void mario(color r, color g, color b, int x, int y) {

  fill(252, 175, 97);//piel
  rect(x, y+40, 120, 20);
  rect(x-20, y+60, 180, 20);
  rect(x-20, y+80, 20, 20);
  rect(x+40, y+80, 140, 20);
  rect(x, y+100, 100, 20);
  rect(x, y+120, 140, 20);
  rect(x-60, y+200, 240, 60);

  fill(r, g, b);//rojo
  rect(x, y, 100, 20);
  rect(x-20, y+20, 180, 20);
  rect(x-20, y+140, 120, 20);
  rect(x-40, y+160, 200, 20);
  rect(x-60, y+180, 240, 20);
  rect(x-20, y+200, 160, 20);

  fill(100, 0, 0);//marrón
  rect(x-20, y+40, 60, 20);
  rect(x-40, y+60, 20, 60);
  rect(x, y+60, 20, 40);
  rect(x+20, y+80, 20, 20);
  rect(x-20, y+100, 20, 20);
  rect(x+100, y+80, 20, 20);
  rect(x+80, y+100, 80, 20);
  rect(x+100, y+280, 60, 20);
  rect(x-40, y+280, 60, 20);
  rect(x-60, y+300, 80, 20);
  rect(x+100, y+300, 80, 20);

  fill(0, 0, 255);//azul
  rect(x+20, y+140, 20, 60);
  rect(x+20, y+180, 80, 20);
  rect(x+80, y+160, 20, 20);
  rect(x, y+200, 120, 20);
  rect(x, y+220, 120, 20);
  rect(x-20, y+240, 160, 20);
  rect(x-20, y+260, 60, 20);
  rect(x+80, y+260, 60, 20);

  fill(0);//negro
  rect(x+80, y+40, 20, 40);
  
  fill(255,255,0);
 rect(x+20, y+200, 20, 20);
 rect(x+80, y+200, 20, 20);
 }
