
typedef DicWord=List<Map<String,String>>;
typedef Word=Map<String,String>;

void main(){
  var test=Dictionary();
  test.add("돈", "money");
  test.add("계좌","account");
  test.add("예금","deposit");
  test.get("돈");
  test.showAll();
}

class Dictionary{
  late Map<String,String> dic={};
  int counter=0;


  ///단어를 추가함
  void add(String term, String definition){
    dic[term]=definition;
  }

  ///단어의 정의를 리턴함
  void get(String term){
    print("get : ${dic[term]}");
  }

  ///단어를 삭제함
  void delete(String word){
    dic.remove(word);
  }

  ///사전 단어를 모두 보여줌
  void showAll(){
    print("showAll() : ${dic.keys}");
  }

  ///사전 단어들의 총 갯수를 리턴함
  void count(){

  }

  ///단어를 업데이트 함. 존재하지 않을시. 이를 추가함.
  void upset(String word){

  }

  ///해당 단어가 사전에 존재하는지 여부를 알려줌
  void exists(){

  }

  ///다음과 같은 방식으로. 여러개의 단어를 한번에 추가할 수 있게 해줌.
  ///[{"term":"김치", "definition":"대박이네"}, {"term": "아파트", "definition": 비싸네"
  void bulkAdd(){ //dic is one list that contains term and definition

  }

  ///다음과 같은 방식으로. 여러개의 단어를 한번에 삭제할 수 있게 해줌.
  ///["김치","아파트"]
  void bulkDelete(){

  }
}