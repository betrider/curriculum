// ignore_for_file: unused_local_variable

void main() {
  // basic
  Object dData = 123;
  int iData = dData as int;
  int ii = 123;
  String ss = ii.toString();
  int iii = int.parse(ss);
  double dd = double.parse(ss);
  int iiii = dd.toInt();

  // List
  List<Object> dList = [1, 2, 3];
  List<int> iList1 = dList.cast<int>();
  List<int> iList2 = List.from(dList);
  print(iList1);
  print(iList2);

  // map
  Map<String, Object> dMap = {'a': 1, 'b': 2, 'c': 3};
  Map<String, int> iMap1 = dMap.cast<String, int>();
  Map<String, int> iMap2 = Map.from(dMap);
  print(iMap1);
  print(iMap2);

  // list map

  // 1.데이터 강제 변환
  Map<String, dynamic> dynamicMap = {
    'key1': 'value1',
    'key2': 123, // int형 데이터
    'key3': true, // bool형 데이터
    'key4': 45.67 // double형 데이터
  };

  Map<String, String> stringMap = dynamicMap.map((key, value) => MapEntry(
        key,
        value.toString(), // 모든 값을 문자열로 변환
      ));

  print(stringMap);

  // 2.데이터 타입 변환
  List<Map<String, Object>> result = [
    {'a': '1', 'b': '2', 'c': '3'},
    {'a': '4', 'b': '5', 'c': '6'},
    {'a': '7', 'b': '8', 'c': '9'},
  ];

  List<Map<String, String>> listMap = result.map((e) => Map<String, String>.from(e)).toList();

  print(listMap);
}
