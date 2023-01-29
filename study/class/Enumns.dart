//대괄호로 enum 추가 가능
enum Team {
  red("red"),
  blue("blue"),
  ;

  final String value;

  const Team(this.value);
}

enum XPLevel {
  beginner(0),
  medium(1),
  pro(2),
  ;

  final int level;

  const XPLevel(this.level);
}

class Player {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print(
        "Hi my name is $name, my xp is ${xp.level}, my team is ${team.value}");
  }
}

void main() {
  //Hi my name is ttokey, my xp is 0, my team is blue\
  var ttokey = Player(name: "ttokey", xp: XPLevel.beginner, team: Team.blue)
    ..sayHello();

  // Hi my name is yesjehmi, my xp is 1, my team is red
  var yesjehmi = ttokey
    ..name = "yesjehmi"
    ..xp = XPLevel.medium
    ..team = Team.red
    ..sayHello();
}
