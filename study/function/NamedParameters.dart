void main() {
  //positional parameter 순서를 정확히 해야 함 권장되지 않음
  //출력 : Hello ttokey, you are 13, and you came from korea
  print(sayHello('ttokey', 13, 'korea'));

  //named parameter 사용 시 순서에 상관 없이 값을 입력할 수 있음
  //출력 : Hello ttokey, you are 13, and you came from korea
  print(sayHello2(
    age: 15,
    name: "ttokey",
    country: "korea",
  ));

  //named parameter 사용 시 default 값 제공
  //출력 : Hello default name, you are 15, and you came from America
  print(sayHello2(
    age: 15,
  ));

  //named parameter 사용 및 required로 인해 모든 값을 입력 해야 함
  //출력 : Hello ttokey, you are 15, and you came from korea
  print(sayHello3(
    age: 15,
    name: "ttokey",
    country: "korea",
  ));
}

//positional parameter
String sayHello(String name, int age, String country) {
  return "Hello $name, you are $age, and you came from $country";
}

//named parameter
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
