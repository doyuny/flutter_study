//record는 자료를 하나로 묶어서 관리할 수 있도록 해줌 -> record안에 list,set,map 모두 들어갈 수 있음
void main(){
  var someRecord = (10,20,false,[1,2],{"do","smash"},{30:"삼십",40:"사십"});
  final int first = someRecord.$1;
  print('first: $first');
  final Set<String> five = someRecord.$5;
  print('five: $five');
  //이름으로도 가져올 수 있음
  var someRecord2 = (numbers:10,20,false,[1,2],{"do","smash"},{30:"삼십",40:"사십"});
  //이름으로 부여할 경우 위치의 번호는 이름을 제외한 곳부터 부여가 됨 -> 20부터 1이됨(아까 위에서는 10부터 1이였음)
  final int numbers = someRecord2.numbers;
  print('numbers: $numbers');

  //record는 수정,추가 불가능
  // 만들때 var로 만들어도 되고 미리 자료형 지정해줘도 됨. -> 해당 값에 이름 지정할 경우 그 이름 자체도 같이 자료형으로 받아줘야함
  var example = (100,200,300);
  print('example.runtimeType: ${example.runtimeType}');
  var example2 = (first : 100,200,third: 300);
  print('example2.runtimeType: ${example2.runtimeType}');
  //var exaple2 말고 (int,{int first,int third}) exaple2 로 하면 자료형 미리 지정해서 만든다고 보면됨.
  //이렇게 자료형이 길어질 경우 -> day04에서 배웠던 typedef로 받아주면 간단해짐(단, typedef는 변수 만드는 함수 아니니까 main함수 밖에서 선언
  //(int,{int first,int third}) exaple2 ->  MyrecordType example2

  //그냥 단순히 레코드에 여러 자료(정보)를 저장하는 것이 아니라 여러 자료가 하나의 세트로 받아서 처리 하는 경우 -> record를 통째로 다른 함수에 넘겨 처리
  //예를 들면 한 유저의 정보(이름,나이,..등등)는 한 세트이기 때문에 그 레코드 자체를 받아서 처리해야함
  example3(("smash",21));


}
typedef MyrecordType = (int,{int first,int third});

void example3((String name, int age)elements){
  print('elements name: ${elements.$1}');
  print('elements age: ${elements.$2}');
}