class Stage{
  private int num;
  int index = 0;
  ArrayList<Question> questionList;
  
  Stage(int num){
    this.num = num;
    questionList = new ArrayList<Question>();
  }
  void display(){
    line(55,55,55,455);
    int count = 0;
    float y = 455;
    while(count < num){
      if(count == index){//當前進度
        fill(0);
      }else{
        fill(255);
      }
      ellipse(55,y,35,35);
      y -= 400/(num-1);
      count += 1;
    }
    if(index >= questionList.size() || status.HP <= 0){//遊戲結束條件
      fill(0);
      textFont(chFont,60);
      text("Game Over.",width/2-textWidth("Game Over.")/2,650);
    }else{
      questionList.get(index).display();//當前關卡
    }
  }
}
