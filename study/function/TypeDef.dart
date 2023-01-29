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
