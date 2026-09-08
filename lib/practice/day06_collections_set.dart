//list는 중복이 있어도 그대로 출력, set은 중복이 있으면 중복을 제외하고 고유한 애들만 출력
//list는 인덱스로 접근 가능하지만 set은 인덱스 접근X(그냥 바구니에 데이터가 와르르 담겨있는 형태라고 보면됨)

void main(){
  List<int> numbers = [1,1,2,3,4,5,5];
  print('numbers : $numbers');

  Set<int> uniqueNumbers = {1,1,2,2,3,5,6,6};
  print('uniqueNumbers : $uniqueNumbers');

  //List 자체를 set으로 다시 받으면 set의 성질이 발현되어 고유한 애들만 남음
  var myNumbers = Set.from(numbers);
  print('myNumbers : $myNumbers');

  //반대로 set 자체를 list로 다시 받을 수 있음 -> list형식으로 바뀜
  final someList = uniqueNumbers.toList();
  print('someList : $someList');
  print('someList.runtimeType : ${someList.runtimeType}');

  var emptySet = Set();
  print('emptySet.runtimeType : ${emptySet.runtimeType}');

  var emptySet2 = Set<int>();
  //또는 Set<int> emptySet2 = {}; 또는 var emptySet2 = Set<int>.new(); 또는 var emptySet2 = Set<int>.identity();
  print('emptySet2.runtimeType : ${emptySet2.runtimeType}');

  //list처럼 추가나 삭제 가능, 추가나 삭제같은 수정 안되게 하고 싶으면 unmodifiable쓰면 수정 안됨

  final myNumbers2 = Set.unmodifiable(numbers);
  print('myNumbers2 : $myNumbers2');

}