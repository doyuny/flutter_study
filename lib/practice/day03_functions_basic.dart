void main() {
  final String result = saySomething("doyun", 29);
  print('result : $result');
  final String result1 = hello(isDone: false);
  print('reuslt1 : $result1');
  example();
  final dk = example1();
  print('dk : $dk');
}

String saySomething(String name,int age){
  return'$name,$age';
}

String hello({bool isDone = true,int? age1 = null}) {
  return'$isDone,$age1';
}

example() => print('smash');
//void example(){print('smash');}을 줄인식 (void이기 때문에 반환값이 없는 함수)
//반환값이 없다는 건 return 값;이 없다는거지 return;하고 끝내는건 괜찮음

String example1() => "DK smash";


