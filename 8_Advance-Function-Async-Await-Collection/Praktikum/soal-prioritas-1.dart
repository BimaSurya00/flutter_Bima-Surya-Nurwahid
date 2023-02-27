Future<dynamic> pengaliList(List mylist, int pengali) async {
   await Future.delayed(Duration(seconds: 1), () {
    List newList = [];
    for (var pepek in mylist) {
      newList.add(pepek * pengali);
    }
    print(newList);
    // return newList;
  });
}

void main(List<String> args) async {
  List baru = [1, 2, 3];
  print('\nList lama');
  print(baru);
  print('\nList baru');
  pengaliList(baru, 2);
}