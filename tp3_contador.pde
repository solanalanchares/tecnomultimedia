void contador() {
  stroke(0);
  textSize(20);
  fill(255);
  text("Días", 50, 540);
  if (dias == 1) {
    strokeWeight(3);
    fill(196, 69, 105);
    rect(50, 550, 20, 20);
    fill(0);
    rect(70, 550, 20, 20);
    rect(90, 550, 20, 20);
    rect(110, 550, 20, 20);
    rect(130, 550, 20, 20);
  }
  if (dias == 2) {
    strokeWeight(3);
    fill(196, 69, 105);
    rect(50, 550, 20, 20);
    rect(70, 550, 20, 20);
    fill(0);
    rect(90, 550, 20, 20);
    rect(110, 550, 20, 20);
    rect(130, 550, 20, 20);
  }
  if (dias == 3) {
    strokeWeight(3);
    fill(196, 69, 105);
    rect(50, 550, 20, 20);
    rect(70, 550, 20, 20);
    rect(90, 550, 20, 20);
    fill(0);
    rect(110, 550, 20, 20);
    rect(130, 550, 20, 20);
  }
  if (dias == 4) {
    strokeWeight(3);
    fill(196, 69, 105);
    rect(50, 550, 20, 20);
    rect(70, 550, 20, 20);
    rect(90, 550, 20, 20);
    rect(110, 550, 20, 20);
    fill(0);
    rect(130, 550, 20, 20);
  }
  if (dias == 5) {
    strokeWeight(3);
    fill(196, 69, 105);
    rect(50, 550, 20, 20);
    rect(70, 550, 20, 20);
    rect(90, 550, 20, 20);
    rect(110, 550, 20, 20);
    rect(130, 550, 20, 20);
  }
  noStroke();
}
