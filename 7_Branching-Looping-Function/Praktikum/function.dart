void main(){
  print (hitungNilai(60));
  // var nilai = hitungNilai('pou');
  // print(nilai);
}
String hitungNilai(var nilai){

  if (nilai.runtimeType == String)
  {
    return 'teks kosong';
  }

  if (nilai > 70)
  {
    return 'A';
  }
  else if(nilai > 40)
  {
    return 'B';
  }
  else if(nilai > 0)
  {
    return 'C';
  }
  else
  {
    return 'D';
  }
}



