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
