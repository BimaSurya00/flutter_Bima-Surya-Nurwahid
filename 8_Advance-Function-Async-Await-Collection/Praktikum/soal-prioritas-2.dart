void main() {
  print('Soal 1');
  List<List<int>> dataList = [
    [1, 2],
    [3, 4],
    [5, 6],
    [7, 8],
    [9, 10]
  ];

  Map<int, int> mapList = {};
  dataList.forEach(
    (a) => mapList.addAll(
      {
        a[0]: a[1],
      },
    ),
  );
  print(mapList);

  print('Soal 2');

  var jumlah = 0;
  mapList.forEach((key, value) {
    jumlah += value;
  });
  print(jumlah);

  var hasilRata = jumlah / mapList.length;
  print(hasilRata);

  print('Soal 3');

  faktorial (int n) {
    if (n == 0) {
      return 1;
    } else {
      return n * faktorial(n - 1);
    }
  }

  print(faktorial(5));

}
