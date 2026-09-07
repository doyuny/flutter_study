//배열이란 같은 자료형으로 줄지어 있는 형태
void main() {
  List<int> numbers = [1,2,3,4,5];
  print('numbers.runtimeType: ${numbers.runtimeType}');
  print('numbers.length: ${numbers.length}');
  numbers.add(6);
  print('numbers.length: ${numbers.length}');

  //리스트에 있는 것 추출하고 싶을때 변수로 받아서 추출해주면 되는데 컴퓨터는 0번부터 시작이라 0부터 카운트
  //예를 들면 3을 추출하고 싶으면 우리 기준으로는 3번째에 있지만 컴퓨터 기준 2번째에 있음(0,1,2)
  final int myNumber = numbers[2];
  print('myNumber: $myNumber');

  //리스트에서 내가 찾고 싶은 것이 어디에 위치해 있는지도 찾을 수 있음 -> indexOf이용
  final int foundNumber = numbers.indexOf(3);
  print('foundNumber: $foundNumber');

  final List<String> friends = ["do","yun"];
  friends.add("dk");
  //friends = ["스티븐","철수"] 이런식으로 완전히 바꾸는건 당연히 final도 상수 선언 키워드니까 안되지만 추가/수정/삭제가 가능함
  print('friends: $friends');

  const List<String> dkFriends = ["smash","showmaker","siwoo","lucid","career"];
  // const 완전히 바꾸는 것도 추가/수정/삭제도 모두 불가능함 -> 단 조회는 가능함(indexOf 이런것들)
  print('dkFriends: $dkFriends');

  //빈문자열 만들 때 그냥 만들면 dynamic형, 자료형 정하고 싶으면 빈문자열 앞에 정의해주면됨.
  var someThings = [];
  print('someThings.runtimeType: ${someThings.runtimeType}');
  var someThings2 = <String>[]; //또는 List<String> someThings2 = [];
  print('someThings2.runtimeType: ${someThings2.runtimeType}');


}