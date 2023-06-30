
typedef DicWord=List<Map<String,String>>;
typedef Word=Map<String,String>;

void main(){
  var test=Dictionary();
  test.add("돈", "money");
  test.add("계좌","account");
  test.add("예금","deposit");
  test.add("예금","savings");
  test.exists("계좌");
  test.delete("계좌");
  test.exists("계좌");
  test.get("돈");
  test.showAll();
  test.count();
  test.bulkAdd([{"term":"김치", "definition":"대박이네"}, {"term": "아파트", "definition": "비싸네"}]);
  test.showAll();
}

class Dictionary{
  late Word dic={};
  late DicWord listDic=[];
  int counter=0;


  ///단어를 추가함
  void add(String term, String definition){
    if(dic.containsKey(term)==false) {
      dic[term] = definition;
      counter++;
    }
  }

  ///단어의 정의를 리턴함
  void get(String term){
    print("get : ${dic[term]}");
  }

  ///단어를 삭제함
  void delete(String word){
    dic.remove(word);
    counter--;
  }

  ///사전 단어를 모두 보여줌
  void showAll(){
    print("showAll() : ${dic.keys}");
    print("test) value : ${dic.values}");
  }

  ///사전 단어들의 총 갯수를 리턴함
  void count(){
    print(counter);
  }

  ///단어를 업데이트 함. 존재하지 않을시. 이를 추가함.
  void upset(String term, String definition){
    if(dic.containsKey(term)==false) {
      dic[term] = definition;
      counter++;
    }
  }

  ///해당 단어가 사전에 존재하는지 여부를 알려줌
  void exists(String term){
    if(dic.containsKey(term)==true){ //있으면
      print("Dictionary has word \"${term}\"");
    }
    else{
      print("Dictionary does not have word \"${term}\"");
    }
  }

  ///다음과 같은 방식으로. 여러개의 단어를 한번에 추가할 수 있게 해줌.
  ///[{"term":"김치", "definition":"대박이네"}, {"term": "아파트", "definition": "비싸네"}]
  void bulkAdd(DicWord addList){ //dic is one list that contains term and definition
    for (Word map in addList) {
      map.forEach((key, value) {
        dic[key] = value;
      });
    }
  }
  void bulkAdd2(DicWord addList){
    // String term=addList[0]["term"];
  }

  ///다음과 같은 방식으로. 여러개의 단어를 한번에 삭제할 수 있게 해줌.
  ///["김치","아파트"]
  void bulkDelete(){

  }
}