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
