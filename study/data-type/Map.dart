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
