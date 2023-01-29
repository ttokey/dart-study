# dart-study

# 변수

1. 변수를 만드는 방법
    1. var 선언
        1. 함수나 메소드 내부에 지역 변수를 선언할 때
    2. 직접 선언
        1. class의 변수나 property를 선언할 때
2. final
    1. 값을 재할당 하지 못하는 변수
3. dynamic
    1. 어떤 타입의 데이터가 들어올 지 모르는 변수
4. const
    1. 컴파일 하기 전에 값을 미리 값을 부여하는 선언
5. null safety
    1. nullable 선언
    2. 변수타입 뒤에? 를 붙여서 사용
    3. 사용방법

        ```dart
        void main() {
            String? name = 'ttokey';
            //첫번째 방법
            name?.isEmpty;
            //두번째 방법
            if(name != null){
                name.isEmpty;
            }
        }
        ```

6. late
    1. type 앞에 작성할 수 있는 명령어
    2. 변수에 값을 추후에 넣을 수 있음.
    3. 변수에 값을 할당하기 전에 변수를 사용하지 못하게 해줌

# 자료형

1. String
2. bool
3. int
4. double
5. num
    1. int, double의 상위 class
6. List
    1. 초기화

        ```dart
        //첫번째 방법
        var numbers = [1,2,3,4];
        //두번째 방법
        List<int> numbers = [1,2,3,4];
        ```

    2. collection 초기화 할때 마지막 요소에 ‘,’를 추가하면 포맷이 바뀜

        ```dart
        void main() {
          var numbers = [1, 2, 3, 4];
          print(numbers);
        }
        
        void main() {
          var numbers = [
            1,
            2,
            3,
            4,
          ];
          print(numbers);
        }
        ```

    3. collection if

        ```dart
        void main() {
          var giveMeFive = false;
          var numbers = [
            1,
            2,
            3,
            4,
            if (giveMeFive) 5,
          ];
          print(numbers);
        }
        ```

7. String Interpolation
    1. String 에 변수 넣는 방법
        1. $를 사용 하여 변수명을 지정
        2. 수식이 필요한 경우 {} 로 감싸서 넣으면 됨
        3. 작은따옴표, 큰따옴표 상관 없음

        ```dart
        void main() {
          var name = 'ttokey';
          var age = 32;
          //$를 사용 하여 변수명을 지정.
          //수식이 필요한 경우 {} 로 감싸서 넣으면 됨
          //작은따옴표, 큰따옴표 상관 없음
          var greeting = 'Hello ${name + "'s"} !! and I\'m ${age + 2}';
          print(greeting);
        
          var numbers = [1, 2, 3, 4];
          print(numbers);
          var numberPrint = "first : ${numbers.elementAt(3)}";
          print(numberPrint);
        }
        ```

8. CollectionFor
    1. 초기화 시 for 문으로 값을 입력 가능(collection if 도 같이 사용 가능)

        ```dart
        void main() {
          var oldFriends = ['ttokey', 'yesjehmi', "haha"];
          var newFriends = [
            'lucy',
            'Mang',
            'dolphin',
            if (oldFriends.length > 2) {for (var friend in oldFriends) "$friend ^~^"}
          ];
          print(newFriends);
        }
        
        ```

9. Map
    1. Map은 초기화 할 때 key value를 보고 컴파일러가 자동으로 자료형을 설정 해 줌

        ```dart
        void main() {
          //컴파일러가 자동으로 자료형을 설정 해 줌
          //Map<String, Object>
          var player = {
            'name': 'ttokey',
            'xp': 20.22,
            'superpower': false,
          };
        
          //Map<String, String>
          var player2 = {
            'name': 'ttokey',
            'xp': '20.22',
            'superpower': 'false',
          };
        
          //초기화를 자료형을 설정해줄 수 있음
          Map<int, bool> status = {
            1: false,
            //아래 입력은 불가능 해짐
            //2 : '123',
          };
        
          //Map<List<int>, String>
          var player3 = {
            [1, 2, 3, 4]: 'ttokey',
          };
        
          //List<Map<String,Object>>
          var player4 = [
            {'name': 'ttokey', 'xp': 123123},
            {'name': 'yesjehmi', 'xp': 12312},
          ];
        
          print(player4);
        }
        
        ```

10. set

    ```dart
    void main() {
      //List와의 차이점은 초기화 시 {}를 사용한다는 것이다
      var numberSet = {1, 2, 3, 3};
      //출력 : {1, 2, 3}
      print(numberSet);
    
      var numberList = [1, 2, 3, 3];
      //출력 : [1, 2, 3, 3]
      print(numberList);
    }
    ```

# 함수

1. 정의방법

    ```dart
    void main() {
      //출력 : Hello ttokey nice to meet you!
      print(sayHello("ttokey"));
      //출력 : Hello ttokey nice to meet you!
      print(sayHello2("ttokey"));
    
      //출력 : 8.5
      print(plus(5, 3.5));
    }
    
    String sayHello(String name) {
      return "Hello $name nice to meet you!";
    }
    
    //fat arrow syntax : return 과 동일한 역할
    //한줄짜리 코드일 때 주로 사용
    String sayHello2(String name) => "Hello $name nice to meet you!";
    
    num plus(num a, num b) => a + b;
    
    ```

2. Named parameters

    ```dart
    void main() {
      //출력 : Hello ttokey, you are 13, and you came from korea
      print(sayHello('ttokey', 13, 'korea'));
    
      //named argument 사용 시 순서에 상관 없이 값을 입력할 수 있음
      //출력 : Hello ttokey, you are 13, and you came from korea
      print(sayHello2(
        age: 15,
        name: "ttokey",
        country: "korea",
      ));
    
      //named argument 사용 시 default 값 제공
      //출력 : Hello default name, you are 15, and you came from America
      print(sayHello2(
        age: 15,
      ));
    
      //named argument 사용 및 required로 인해 모든 값을 입력 해야 함
      //출력 : Hello ttokey, you are 15, and you came from korea
      print(sayHello3(
        age: 15,
        name: "ttokey",
        country: "korea",
      ));
    }
    
    String sayHello(String name, int age, String country) {
      return "Hello $name, you are $age, and you came from $country";
    }
    
    //named argument 를 사용하기 위해선 변수에 {} 를 감싸면 된다
    //null safety를 처리하기 위한 방법1 : default value를 정해주어야 함
    String sayHello2(
        {String name = 'default name', int age = 99, String country = 'America'}) {
      return "Hello $name, you are $age, and you came from $country";
    }
    
    //null safety를 처리하기 위한 방법2 : not null 하도록 required 를 선언해 줌
    String sayHello3(
        {required String name, required int age, required String country}) {
      return "Hello $name, you are $age, and you came from $country";
    }
    
    ```

3. OptionalPositionalParameters

    ```dart
    void main() {
      //Hello ttokey, you are 13 years old and you are from korea
      print(sayHello('ttokey', 13, 'korea'));
      //Hello ttokey, you are 13 years old and you are from Swiss
      print(sayHello2('ttokey', 13));
    }
    
    String sayHello(String name, int age, String country) =>
        'Hello $name, you are $age years old and you are from $country';
    
    //parameter 를 optional로 만드는 방법
    //대괄호로 감싸고 default 값을 입력해주기
    String sayHello2(String name, int age, [String? country = 'Swiss']) =>
        'Hello $name, you are $age years old and you are from $country';
    ```

4. QQOperator

    ```dart
    void main() {
      //출력 : TTOKEY
      print(capitalizeName('ttokey'));
    
      //출력 : null
      print(capitalizeName2(null));
    
      //출력 : no input
      print(capitalizeName3(null));
    
      //left ??= right => left 값이 null 이면 right 값을 입력해줌
      //출력 : null
      String? name;
      print(name);
    
      //출력 : hello
      name ??= 'hello';
      print(name);
    
      //값이 null이 아니기 때문에 기존에 입력된 값을 출력 함
      //출력 : hello
      name ??= 'hi';
      print(name);
    
      //출력 : hi
      name = null;
      name ??= 'hi';
      print(name);
    }
    
    String capitalizeName(String name) => name.toUpperCase();
    
    //? : name이 null 일수도 아닐수도 있음
    String? capitalizeName2(String? name) => name?.toUpperCase();
    
    //left ?? right => left가 null 일 때 right 를 return
    String capitalizeName3(String? name) => name?.toUpperCase() ?? 'no input';
    
    ```

5. typedef

    ```dart
    //typedef : 자료형의 alias
    typedef ListOfInts = List<int>;
    typedef UserInfo = Map<String, String>;
    
    void main() {
      var input = [1, 2, 3];
    
      //[3, 2, 1]
      print(reverseListOfNumbers(input));
      //[3, 2, 1]
      print(reverseListOfNumbers2(input));
    
      var name = "ttokey";
      //Hi ttokey
      print(sayHello({"name": name}));
      //Hi ttokey
      print(sayHello2({"name": name}));
    }
    
    List<int> reverseListOfNumbers(List<int> list) {
      var reversed = list.reversed;
      return reversed.toList();
    }
    
    //typeDef 를 사용하면 reverseListOfNumbers 와 동일한 형태의 함수를 만들 수 있음
    ListOfInts reverseListOfNumbers2(ListOfInts list) {
      var reversed = list.reversed;
      return reversed.toList();
    }
    
    String sayHello(Map<String, String> userInfo) {
      return "Hi ${userInfo['name']}";
    }
    
    String sayHello2(UserInfo userInfo) {
      return "Hi ${userInfo['name']}";
    }
    
    ```

# class

1. Basic Class

    ```dart
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
    ```

2. Constructors

    ```dart
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
    ```

3. Named Constructor parameters

    ```dart
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
        team: "red",
        age: 35,
      );
      //Hi my name is ttokey, my xp is 123123, my team is blue, my age is 32
      player.sayHello();
      // Hi my name is yesjehmi, my xp is 1500, my team is red, my age is 35
      player2.sayHello();
    }
    ```

4. Named Constructors

    ```dart
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
    
    ```

5. Cascade Notation

    ```dart
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
    ```

6. Enums

    ```dart
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
    
    ```

7. Abstract Classes

    ```dart
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
    
    ```

8. Inheritance

    ```dart
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
    
    ```

9. Mixins

    ```dart
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
    
    ```
