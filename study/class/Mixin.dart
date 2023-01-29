//Mixin은 생성자가 없는 클래스를 의미한다
//extends 가 아닌 with를 활용함
//다른 클래스의 프로퍼티와 메소드를 긁어다 오는 것
class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuun!");
  }
}

class Tall {
  final double height = 1.8;
}

enum Team {
  blue,
  red,
}

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({required this.team});

  void sayStatus() {
    print(
        "My team is $team, my height is $height, my strengthLevel is $strengthLevel");
  }
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main() {
  var player = Player(team: Team.blue);
  //ruuuuun!
  player.runQuick();
  //My team is Team.blue, my height is 1.8, my strengthLevel is 1500.99
  player.sayStatus();
}
