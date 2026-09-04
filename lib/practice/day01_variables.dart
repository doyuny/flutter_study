void main(){
  var myName = "doyun";
  print('myName.runtimeType:${myName.runtimeType}');

  //myName = "do"; -> 변경 가능

  dynamic yourName = "smash";
  yourName = 0720;
  print('yourName.runtimeType : ${yourName.runtimeType}');
  yourName = true;
  print('yourName.runtimeType : ${yourName.runtimeType}');
  yourName = "smash";
  print('yourName.runtimeType : ${yourName.runtimeType}');

  final nickname = "kim";
  final String nickname02 = "Gim";
  const nickname03 = "lee";
  const String nickname04 = "Ree";

  //final과 const에서 쓴 nickname~nickname04까지는 위처럼 변경 안됨
  //nickname = "do" 변경 안됨


  print(myName);
  print(yourName);
}