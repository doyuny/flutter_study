//자료 = data, type = 자료형(data의 모양(크기)), typedef = 자료형을 이렇게 정의하겠다
//typedef 새로부를_이름 = 진짜이름; , 자료형이 너무 긴 경우 사용, 자료형 명시해주면 좋음(여러명과의 개발때 중요)

void main(){
  MyList myList = [('Do', 29, true)];
    print(myList);

    namedFution(name: "smash", age: 21);

    locatedFution("doyun", 29, true);

    locatedFution2("dk", true);

    combinedFution(isDone: false, "hi", job: "student", 10);

    combinedFution2(isDone: false, "hi", job: "student", 10, grade: 2);

}

typedef MyList = List<(String name, int age, bool isDone)>;

namedFution({String? name, int ? age, bool? isDone = true}){
  print('name: $name, age: $age, isDone: $isDone');
}

locatedFution(String name, int age, bool isDone){
  print('name: $name, age: $age, isDone: $isDone');
}

locatedFution2(String? name, bool isDone, [int? age]){
  print('name: $name, isDone: $isDone, age: $age');
}

combinedFution(String name, int age, {bool? isDone, String? job}){
  print('name: $name, age: $age, isDone: $isDone, job: $job');
}

combinedFution2(String name, int age, {bool? isDone, String? job, required int grade}){
  print('name: $name, age: $age, isDone: $isDone, job: $job, grade: $grade');
}

//이름 기반 매개변수 함수는 기본적으로 생략 가능함 -> 따라서 매개변수에 값을 안넣을 수 있기 때문에 옵셔널 쓰거나 nullable(= null형태)해줘야함
//근데 이름 기반  매개변수 함수에서 어떤 매개변수가 반드시 써줘야하는(있어야하는) 매개변수라면? -> required 붙이면 됨.