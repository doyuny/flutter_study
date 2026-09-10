//map(키:값) -> 특정 키로 데이터를 빠르게 찾을 수 있음
void main(){
  Map<int, String> students = {1: "do", 2: "smash"};
  print('students.runtimeType : ${students.runtimeType}');

  final String? myStudents = students[2];
  //students에 해당 키 값이 없을 수도 있기 때문에 옵셔널 붙여줘야함
  print('myStudents : $myStudents');
  print('myStudents.runtimeType : ${myStudents.runtimeType}');

  //추가,수정 가능
  students[3] = "pom";
  students[1] = "doyun";
  print('students : $students');

  //list를 set으로 set을 list로 표현 가능했던것처럼 map도 가능

  List<int> numbers = [1,2,2,3,4,5,5];
  //Map으로 바꿀때 자료형 미리 정해줄 수도 있음 -> Map<int,int>.fromIterable
  final numberMap = Map.fromIterable(numbers, key: (aNumber)
  {return aNumber;
    },value: (aNumber){
    return aNumber*10;
  });
  print('numberMap : $numberMap');
  print('numberMap.runtimeType : ${numberMap.runtimeType}');
  //int값을 String으로 받고 싶을때는 또 다른 변수를 만들어서 거기서 int를 먼저 받고 그 변수를 호출
  final numberMap2 = Map<int,String>.fromIterable(numbers, key: (aNumber)
  {return aNumber;
  },value: (aNumber){
    final valueResult = aNumber * 10;
    return "$valueResult";
  });
  print('numberMap2 : $numberMap2');
  print('numberMap2.runtimeType : ${numberMap2.runtimeType}');

  List<int> counts = [3,6,9];
  List<String> korCounts = ["셋","여섯","아홉"];
  //여러 list를 하나의 map으로 표현할때는 fromIterables로 사용.
  final koreaCountMap = Map<int,String>.fromIterables(counts,korCounts);
  print('koreaCountMap : $koreaCountMap');
  //당연히 이때의 map도 수정이나 추가가 가능 -> 만약 수정이나 추가 불가능하게 하고 싶다면 unmodifiable사용 -> Map.unmodifiable

  var emptyMap = {};
  print('emptyMap : $emptyMap');
  //빈map만들때 var로 만들면 dynamic형, 따로 자료형 주고 싶으면 Map<int,String> emptyMap = {}; 이런식으로 해줘도 됨
  //뒤에도 {}말고 Map.new();, Map();, Map.identity();로도 받을 수 있음
}