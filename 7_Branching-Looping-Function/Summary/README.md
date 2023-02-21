**Bahasa Pemrograman Dart**

Branching, Looping, Function


1. Branching atau percabangan IF

Pengambilan keputusan, menentukan alur program pada kondisi tertentu

IF

* Memerlukan nilai bool (dari operator logical atau comparison)
* Menjalankan bagian proses jika nilai bool bernilai true

Dituliskan dengan :


```
if (nilai_bool) {

	//blok kode dijalankan jika nilai_bool adalah true
} 
```

contoh code penggunaan if

```
void main() {


	var usia = 18;
	if (usia < 20 ) {
		print(‘Remaja’); //jika usia kurang dari 20, maka ditampilkan remaja pada layar
	}
}

```

IF - ELSE

* Berjalan dengan if
* Menambah alternatif jika nilai bool adalah false 

Dituliskan dengan:

```
if (nilai_bool) {

	//proses jika nilai_bool adalah true
} else {

	//proses jika nilai_bool adalah false
}

```


contoh code menggunakan if-else


```
void main() {

	var usia = 18;
	if (usia < 20 ) {
		print(‘Remaja’);//jika usia kurang dari 20, maka ditampilkan remaja pada layar

	} else {
		print(‘tidak memiliki golongan’); //jika false, maka ditampilkan tidak memiliki golongan pada layar
	}
}
```

Sisipan Else-If

Berjalan dengan if
Menambah alternatif jika nilai bool adalah false
Menambah pengujian nilai bool lain

Dituliskan dengan

```
if (nilai_bool) {
	//proses jika nilai_bool adalah true
} else if (nilai_bool) {
	//proses jika nilai_bool adalah false dan nilai_boll adalah true
}

```

2. Perulangan 

Menajalankan proses dalam code progam berulang kalo

For

* Diketahui beberapa kali perulangan terjadi 
* Memerlukan nilai awal
* Memerlukan nilai bool, jika true maka perulangan dilanjutkan
* Memerlukan pengubah nilai

Ditulis dengan 
for( nilai_awal ; nilai_bool ; pengubah_nilai_awal ){
	//proses berulang jika nilai_bool adalah true
}


While 
Tidak diketahui berapa kali perulangan terjadi
Memerlukan nilai bool, jika true maka perulangan dilanjutkan

Dituliskan dengan:
```
while (nilai_bool){
	//proses berulang jika nilai_bool adalah true
}
```

Do-While

Mengubah bentuk while 
Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true

Ditulis dengan :

```
do {
	//proses berulang jika nilai_bool adalah true 
} while (nilai_bool);
```

3. Fungsi

Kumpulan code program yang dapat digunakan ulang

berisi dengan kumpulan perintah, dapat digunakan berkali-kali, cukup mengubah fungsi sekali, penggunaan lainya akan ikut berubah.

Membuat Fungsi 

```

tipe_data nama_fungsi() {
//perintah yang dijalankan saat fungsi dipanggil
}

```

```

void halo(){
	print(‘halo’);
}

```
Memanggil Fungsi 

nama_fungsi();

```

void main() {
	halo();
}

```

Fungsi dengan parameter 

Mengirim data saat menjalankan fungsi

```

tipe_data nama_fungsi (tipe_data nama_parameter) {
	//perintah yang dijalankan saat fungsi dipanggil
}

```

Fungsi dengan return 

Memberi nilai pada fungsi saat dipanggil

```

tipe_data nama_fungsi (tipe_data nama_parameter){
	//perintah yang dijalankan saat fungsi dipanggil
return nilai;
}

```









