import 'package:collection/collection.dart';

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

  Map<String, int > dir={
    "1":1,
    "2":2,
    "4":7,
    "3":3,
  };

  print(dir.keys.toString()+"\n");
  print(dir.values);
  print(dir["4"]);
}