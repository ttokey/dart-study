class Player {
  final String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  //named constructor를 만드는 방법
  //Class 뒤에 . 으로 메서드 생성, 콜론(:)으로 초기화
  //static factory method 같은 것
  Player.createBluePlayer({required name, required age})
      : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

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
    team: "red",
    age: 35,
  );

  var bluePlayer = Player.createBluePlayer(name: "ttokey", age: 15);
  var redPlayer = Player.createRedPlayer("yesjehmi", 13);

  //Hi my name is ttokey, my xp is 123123, my team is blue, my age is 32
  player.sayHello();
  // Hi my name is yesjehmi, my xp is 1500, my team is red, my age is 35
  player2.sayHello();
  //Hi my name is ttokey, my xp is 0, my team is blue, my age is 15
  bluePlayer.sayHello();
  // Hi my name is yesjehmi, my xp is 0, my team is red, my age is 13
  redPlayer.sayHello();
}
