void main() {
  String? name = 'ttokey';
  //첫번째 방법
  name?.isEmpty;
  //두번째 방법
  if (name != null) {
    name.isEmpty;
  }
}
