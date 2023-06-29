import 'package:collection/collection.dart';

enum Team {Wolves,Eagels,red,blue,wolves,Thunders,thunders}

class Player extends Human{
  String name;
  int age, xp;
  Team team;


  Player({
    required this.name,
    required this.age,
    required this.team,
    required this.xp}){
    Hello();
  }

  Player.wolves({
    required String name,
    required int age,})
      :
        this.name=name,
        this.age=age,
        this.team=Team.Wolves,
        this.xp=0;

  Player.thunders({
    required String name,
    required int age,})
      : this.name=name,
        this.age=age,
        this.team=Team.Thunders,
        this.xp=0;


  Player.fromJason(Map<String, dynamic> playerJson)
      :
        name=playerJson["name"],
        xp=playerJson["xp"],
        team=playerJson["team"],
        age=0;

  void Hello(){
    print("Hi my name is $name");
    // print("I am $age");
    print("My team is $team I got $xp xp");
  }

  @override
  void walk() {
    print("$name is walking");
  }

}

class Teams{

}

abstract class Human{
  void walk();
}

void main(){
  var dk=Player(name: "dounguk", age: 28, team: Team.Wolves, xp: 1200)
    ..name="dk"
    ..age=23
    ..xp=150000
    ..team=Team.Eagels
    ..Hello()
    ..walk();


  var apiData=[
    {
      "name":"Daniel",
      "team":Team.Thunders,
      "xp":0,
    },
    {
      "name":"nico",
      "team":Team.red,
      "xp":1200,
    },
    {
      "name":"Dounguk",
      "team":Team.Wolves,
      "xp":1400,
    },
  ];

  apiData.forEach((playerJson) {
    var player=Player.fromJason(playerJson);
    player.Hello();
  });




  var canBeAll=Player.wolves(
      name:"Dounguk",
      age:28,
  );
  // canBeAll.Hello();
  // print("");
  var canBeAll2=Player.thunders(
      name:"Daniel",
      age:15,

  );
  // canBeAll2.Hello();




}





void etc(){
  Map<String, int > dir={
    "1":1,
    "2":2,
    "4":7,
    "3":3,
  };
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