typedef DicWord=List<Map<String,String>>;
typedef Word=Map<String,String>;
typedef StringList=List<String>;

/// @DayFive.dart: Creat Dictionary class, with methods.
/// @author Dounguk Kim
/// @since 6/30/2023
/// @version v0.0.1


void main(){
  ///test instance for Dictionary class
  ///below test instance, test calles all methods and print result
  ///result: "method() : result"
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
  test.upset("계좌", "account");
  test.count();
  test.bulkAdd([{"term":"김치", "definition":"대박이네"}, {"term": "아파트", "definition": "비싸네"}]);
  test.count();
  test.bulkDelete(["아파트", "돈"]);
  test.showAll();
  test.count();
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
      print("add() : \"$term : $definition\" added");
    }
  }

  ///단어의 정의를 리턴함
  void get(String term){
    print("get() : ${dic[term]} is term of \"$term\"");
  }

  ///단어를 삭제함
  void delete(String word){
    dic.remove(word);
    counter--;
    print("delete() : $word deleted");

  }

  ///사전 단어를 모두 보여줌
  void showAll(){
    print("showAll() : \"${dic.keys}\"");

  }

  ///사전 단어들의 총 갯수를 리턴함
  void count(){
    print("count() : $counter");
  }

  ///단어를 업데이트 함. 존재하지 않을시. 이를 추가함.
  void upset(String term, String definition){
    if(dic.containsKey(term)==false) {
      dic[term] = definition;
      counter++;
      print("upset() : updated/added $term : $definition");
    }
  }

  ///해당 단어가 사전에 존재하는지 여부를 알려줌
  void exists(String term){
    if(dic.containsKey(term)==true){ //있으면
      print("exists() : Has word \"${term}\"");
    }
    else{
      print("exists() : Does not have word \"${term}\"");
    }
  }

  ///다음과 같은 방식으로. 여러개의 단어를 한번에 추가할 수 있게 해줌.
  ///[{"term":"김치", "definition":"대박이네"}, {"term": "아파트", "definition": "비싸네"}]
  void bulkAdd(DicWord addList){ //dic is one list that contains term and definition
    StringList keys=[];
    for (Word map in addList) {
      String tempTerm="";
      String tempDefinition="";

      map.forEach((key, value) {
        if (key == "term") {
          tempTerm = value;
          keys.add(value);
        } else if (key == "definition") {
          tempDefinition = value;
        }
      });
      dic[tempTerm] = tempDefinition;
      counter++;
    }
    print("bulkAdd() : multiple words saved ${keys}");
  }

  ///다음과 같은 방식으로. 여러개의 단어를 한번에 삭제할 수 있게 해줌.
  ///["김치","아파트"]
  void bulkDelete(StringList terms){
    for(int i=0;i<terms.length;i++){
      if(dic.containsKey(terms[i])){
        dic.remove(terms[i]);
        counter--;
      }
    }
    print("bulkDelete() : deleted ${terms}");
  }
}