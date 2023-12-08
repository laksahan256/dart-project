void main() {

  firstRecurringCharacter(input) {
    Map numberMap = {};
    for (int i in input) {
      if (numberMap[i] != null) {
        return i;
      }
      numberMap[i] = true;
    }
    return 'All numbers uniqe';
  }

  print(firstRecurringCharacter([2,5,5,2,3,5,1,2,4]));


}
  
