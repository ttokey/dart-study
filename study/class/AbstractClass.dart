//추상화 클래스는 다른 클래스들이 직접 구현 해야하는 메소드들을 모아놓은 `청사진`이라 보면 된다.
//추상 클래스에서는 기능을 구현하지 않는다.
abstract class Human {
  void walk();
}

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

class Player extends Human {
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

  //walk 메서드가 반드시 정의되어야 함
  void walk() {
    print("$name is walking");
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

  //yesjehmi is walking
  ttokey.walk();
}
