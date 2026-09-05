void main(){
  var myName = "doyun";
  if(myName == "doyun"){
    print('doyun이 맞습니다');
  } else if (myName == "smash"){
    print('smash 입니다');
  } else{
    print('잘 모르겠습니다');
  }

  var isDarkmode = true;
  if(isDarkmode == true){
    //isDarkmode == true라고 써도 되고 위에 그냥 true라고 했으니까 isDarkmode라고만 써도됨
    //만약 다크모드 아니다 라고 하고 싶으면 isDarkmode != true 또는 !isDarkmode
    print('darkmode입니다');
  }
  //삼항 연산으로도 가능 -> ?참:거짓
  //var result = isDarkmode ? 다크모드:다크모드아님;

  String? name = "smash";
  final String result = name ??"누구임";
  // name이 null일경우 누구임이 출력
  print('result:$result');
  print('result.runtimeType:${result.runtimeType}');

}