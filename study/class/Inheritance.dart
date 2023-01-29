class Human {
  final String name;

  Human({required this.name});

  void sayHello() {
    print("Hello my name is $name");
  }
}

enum Team {
  blue,
  red,
}

class Player extends Human {
  final Team team;

  //상속받으면 아래와 같이 super 약속어를 통하여 생성하거나 메서드를 호출 할 수 있다.
  Player({required this.team, required String name}) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print("Hello my name is $name, my team is $team");
  }
}

void main() {
  var player = Player(team: Team.blue, name: "ttokey");
  //Hello my name is ttokey
  // Hello my name is ttokey, my team is Team.blue
  player.sayHello();
}
