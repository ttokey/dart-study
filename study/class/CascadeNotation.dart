class Player {
  String name = 'ttokey';
  int xp = 1500;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is $name, my xp is $xp, my team is $team");
  }
}

void main() {
  //java의 스트림과 비슷한 느낌으로 class 생성 후 동작을 계속 할 수 있음.
  //.. 으로 계속 됨

  //Hi my name is ttokey, my xp is 15, my team is blue
  var ttokey = Player(name: "ttokey", xp: 15, team: "blue")..sayHello();

  //Hi my name is yesjehmi, my xp is 30, my team is red
  var yesjehmi = ttokey
    ..name = "yesjehmi"
    ..xp = 30
    ..team = "red"
    ..sayHello();
}
