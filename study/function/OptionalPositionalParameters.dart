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
