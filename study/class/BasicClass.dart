class Player {
  //class 안의 변수는 반드시 타입을 명시해 주어야 함
  //값을 변경하지 못하게 하려면 final을 붙여 줌
  String name = 'ttokey';
  int xp = 1500;

  void sayHello() {
    //가급적 class 내에서 this. 를 사용하지 않는 것이 권고 되고 있음
    print("Hi my name is $name");
  }
}

void main() {
  //new 를 붙일 필요 없음.
  //자동으로 instance가 생성 됨
  var player = Player();
  //ttokey
  print(player.name);
  player.xp = 123123;
  //123123
  print(player.xp);
  //Hi my name is ttokey
  player.sayHello();
}
