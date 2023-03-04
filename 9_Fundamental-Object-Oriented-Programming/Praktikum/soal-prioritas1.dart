class Hewan {
  int beratHewan;
  Hewan(this.beratHewan);
}

class Mobil {
  final int kapasitas = 5;
  var muatan = [  ];
  var dataMuatan = <Hewan>[];

  void tambahMuatan(Hewan hewan, String namaHewan) {
    if (muatan.length < kapasitas) {
      muatan.add(namaHewan);
      dataMuatan.add(hewan);
      print('$namaHewan berhasil ditambahkan');
    } else {
      print('gagal menambahkan $namaHewan, karena melebihi kapasitas');
    }
  }

  int totalMuatan() {
    int totalBerat = 0;
    for (var i in dataMuatan) {
      totalBerat = totalBerat + i.beratHewan;
    }
    return totalBerat;
  }
}

void main(List<String> args) {
  var ayam = Hewan(2);
  var sapi = Hewan(3);
  var bebek = Hewan(2);
  var nila = Hewan(3);
  var babi = Hewan(4);
  var motor = Hewan(4);

  var mobil = Mobil();

  mobil.tambahMuatan(ayam, 'ayam');
  mobil.tambahMuatan(sapi, 'sapi');
  mobil.tambahMuatan(bebek, 'bebek');
  mobil.tambahMuatan(nila, 'nila');
  mobil.tambahMuatan(babi, 'babi');
  mobil.tambahMuatan(motor, 'motor'); //mencoba menambahkan motor, tetapi akan gagal karena kapasitas sudah penuh


  print('Total berat muatan adalah ${(mobil.totalMuatan())}');
}