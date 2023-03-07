class BangunRuang {
  double volume() {
    return 0;
  }
}

class Balok extends BangunRuang {
  @override
  double panjang, lebar, tinggi;
  Balok(this.panjang, this.lebar, this.tinggi);
  double volume() {
    return panjang * lebar * tinggi;
  }
}

class kubus extends BangunRuang {
  @override
  double sisi;
  kubus(this.sisi);
  double volume() {
    return sisi * sisi * sisi;
  }
}

void main(){
  var balok1 = Balok(2, 3, 4);
  var kubus1 = kubus(5);
  print(balok1.volume());
  print(kubus1.volume());

}