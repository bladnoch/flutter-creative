import 'package:collection/collection.dart';

Map<String, int > dir={
  "1":1,
  "2":2,
  "4":7,
  "3":3,
};

void main(){
  String name="nasd";
  bool td=true;
  double db=23.1244;
  int asdf=332;

  if(name.isNotEmpty){
    print("name has someting");
  }

  var numbers= [
    2,
    3,
    4,
    3,
    if(name.isNotEmpty) 44
  ];

  print(numbers.length);
  print(numbers.isNotEmpty);
  if(numbers.isNotEmpty){
    numbers.add(0);
  }

  print("total price ${asdf}");
  print("total price $asdf");

  print("max : "+numbers.max.toString());
  print("min : "+numbers.min.toString());



  print(dir.keys.toString()+"\n");
  print(dir.values);
  print(dir["4"]);
  print("next print is from pritnDir() method : ${printDir()}");
  printDir();

}

String printDir({
  int dir=12,
}){
  return dir.toString();
}

///named function은 parameter에 중괄호를 쳐준다 그럴경우 순서에 상관없이 map처럼 파라미터 이름과 value를 추가한다.
///생성자처럼 번수를 주지 않았을 경우에도 default로 값을 지정해줄 수 있다.
///
/// left ?? right
/// if (left==!null) => left
/// if (left==null) => right
///
///