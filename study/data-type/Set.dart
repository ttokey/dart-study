void main() {
  //List와의 차이점은 초기화 시 {}를 사용한다는 것이다
  var numberSet = {1, 2, 3, 3};
  //출력 : {1, 2, 3}
  print(numberSet);

  var numberList = [1, 2, 3, 3];
  //출력 : [1, 2, 3, 3]
  print(numberList);
}
