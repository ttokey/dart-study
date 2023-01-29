class Player {
  late final String name;
  late int xp;

  //아래와 같은 형태로 생성자를 만들 때
  //late 를 변수에 붙여 주어야만 생성자를 만들 수 있다.
  Player(name, xp) {
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("Hi my name is $name, my xp is $xp");
  }
}

class Player2 {
  final String name;
  int xp;

  //argument 를 아래와 같이 this.를 이용해서 생성하는 경우 late를 붙이지 않아도 된다
  Player2(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name, my xp is $xp");
  }
}

void main() {
  var player = Player("ttokey", 1500);
  var player2 = Player("yesjehmi", 900);

  var player3 = Player2("ttokey", 1500);
  var player4 = Player2("yesjehmi", 900);
  //ttokey
  print(player.name);
  player.xp = 123123;
  //123123
  print(player.xp);
  
  //Hi my name is ttokey, my xp is 123123
  player.sayHello();

  // Hi my name is yesjehmi, my xp is 900
  player2.sayHello();

  // Hi my name is ttokey, my xp is 1500
  player3.sayHello();
  player4.xp = 123123;

  // Hi my name is yesjehmi, my xp is 123123
  player4.sayHello();
}
