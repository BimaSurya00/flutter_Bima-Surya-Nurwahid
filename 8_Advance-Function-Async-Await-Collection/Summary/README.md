**Bahasa Pemrograman Dart**

Advance Function - Async Await



**Fungsi Lanjutan**

Anonymous Function 
Tidak memiliki nama 
Fungsi sebagai data

Ditulis dengan :

```
() {
	// perintah yang dijalankan saat fungsi dipanggil
}

```
contoh :

```

var hello = () { //anonymous function
	print(‘hello’); 
};

var jumlah = ( int a, int b ) {
	return a + b’
};

void main() {


	hello();  //memanggil anonymous function
	print(jumlah(1,2)); //memanggil anonymous function

}

```


**Arrow Function**

Dapat memiliki nama atau tidak 
Berisi 1 data (dari proses maupun data statis)
Nilai return fungsi ini diambil dari data tersebut

Ditulis dengan :
```
() => proses_yang_dijalankan_saat_fungsi_dipanggil();

```
contoh code arrow function

```
var hello = () => print(‘hello’);
var jumlah = (int a, int b) => a + b;

void main(){

	hello();
	print(jumlah(1,2));
}

```

Fungsi hello melakukan print di dalamnya 
Fungsi jumlah memberi nilai saat dijalankan sehingga dapat dilakukan print



2. Async-Await dan Future

Menjalankan beberapa proses tanpa perlu menunggu
Proses ditulis dalam bentuk fungsi
Await akan menunggu hingga proses async selesai

contoh code menggunakan async-await

```

Future<void> P1() async {
	await Future.delayed(Duration(seconds : 1), () {
		print(‘hello dari P1’);
	});
}

void P2 () {
	print(‘hello dari P2’);
}

void main() async {
	await P1();
	P2();
}
```
**Tipe data Future**

Data yang dapat ditunggu
Membawa data return dari fungsi async

code penggunaan future

```
Future<String> P1() {
	return Future.delayed(Duration(seconds: 1), (){
		return ‘hello dari P1’; //data yang direturn
	});
}

void main() async {

	var data = await P1();
	print(data); P1 menghasilkan Future yang di dalamnya terdapat sebuah String
}

```
3. Collection

Kumpulan data pada satu tempat

**List**

Menyimpan data (elemen) secara berbaris


contoh code list

```
void main() async {

	var scores = []; //membuat list

	scores.add(60); //menambah data
	scores.add(80); //
	scores.add(90); //

	print(scores); //menampilkan data list

	print(scores[0]); //menampilkan data list pada index ke 0

}
```
**Map**

Menyimpan data secara key-value 

Key berguna selayaknya index pada list 


contoh code map :

```
void main() async {
	var student = {}; //membuat map
	student[‘name’] = ‘Alex’; //menambah data 
	student[‘age’] = 16; //menambah data 

	print(student); //menampilkan data map

	print(student[‘name’]); //mengambil data berdasarkan key ‘name’

}

```

