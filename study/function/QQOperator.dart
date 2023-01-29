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
