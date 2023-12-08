void main() {
  final myHashTable = HashTable(10);
  myHashTable.set('banana', 5);
  myHashTable.set('apples', 9);
  print(myHashTable.dataList);
  print(myHashTable.get('apples'));
  print(myHashTable.keys());
  
}

class HashTable {
  final List dataList;

  HashTable(size) : dataList = List.generate(size, (index) => []);

  int _hash(String key) {
    int hash = 0;
    for (int i = 0; i < key.length; i++) {
      hash = (hash + key.codeUnitAt(i) * i) % dataList.length;
    }
    return hash;
  }

  void set(key, value) {
    validateSetter(key, value);
    int index = _hash(key);

    if (isBucketEmpty(index)) {
      dataList[index] = [key, value];
    }
    else {
      dataList[index ~/ 2] = [key, value];
    }
  }

  void validateSetter(key, value) {
    if (key is !String || value is !int) throw 'Please Enter String key and int value';
  }

  bool isBucketEmpty(int index) {
    return dataList[index].isEmpty;
  }

  dynamic get(key) {
    int index = _hash(key);
    if (isBucketEmpty(index)) return;
    return dataList[index][1];
  }

  Set keys() {
    Set keys = {};
    for (var i in dataList) {
      if(i.isEmpty) continue;
      keys.add(i[0]);
    }
    return keys;
  }

}