

class TestOne with pritnIt, MixinTest{
  String hi;
  double boo;
  String name;
  TestOne(this.hi,this.boo,this.name);

}
class MixinTest{
  final double hello=1.11;
}

class pritnIt{
  void printIt(){
    print("sdfgs".toUpperCase());
  }

}

void main(){
  print("day4");
  var j=TestOne("hi", 121.233,"dounguk");
  j.printIt();
  print("${j.hi} ${j.name}~~ it's been ${j.boo}~~~~");
}
