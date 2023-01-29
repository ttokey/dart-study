class Player {
  final String name;
  int xp;
  String team;
  int age;

  //NamedParameter에서 사용한 것과 동일하게 사용 가능하다
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print(
        "Hi my name is $name, my xp is $xp, my team is $team, my age is $age");
  }
}

void main() {
  var player = Player(
    name: "ttokey",
    xp: 500,
    team: "blue",
    age: 32,
  );
  var player2 = Player(
    name: "yesjehmi",
    xp: 1500,
    team: "read",
    age: 35,
  );
  //Hi my name is ttokey, my xp is 123123, my team is blue, my age is 32
  player.sayHello();
  // Hi my name is yesjehmi, my xp is 1500, my team is read, my age is 35
  player2.sayHello();
}
