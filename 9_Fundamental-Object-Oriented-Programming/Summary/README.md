**Dart Object Oriented Programming**

1. Pengenalan OOP dart

Object Oriented Programming atau yang biasa disebut oop adalah pemrograman yang berorientasi pada objek yang merupakan model pemrograman komputer dengan pengaturan desain perangkat lunak di sekitar data atau objek. Berbeda dengan pemrograman lain yang berfokus pada fungsi dan logika, OOP lebih menaruh fokus pada objek atau bidang data yang memiliki atribut atau perilaku teknis unik. Fokus OOP pada objek ini memungkinkan adanya manipulasi yang dilakukan pengembang dan cocok untuk pemrograman besar dan kompleks.



2. Materi komponen OOP

* Class

Deskripsi :

Abstraksi  dari sebuah benda (object)
Memiliki ciri-ciri yang disebut property
Memiliki sifat dan kemampuan yang disebut method

Membuat Class :

Membuat kata kunci class
Memiliki nama
Detail class diletakkan dalam kurawal

```
class hewan {
	//property
	//method
}

```

Membuat Object :

Bentuk sebenarnya dari class
DIsebut juga instance of class
Diperlakukan seperti data

```
void main() {

	var h1 = Hewan();
	var h1 = Hewan();
	var h3 = Hewan();
}

```

Property

Deskripsi :


Ciri-ciri suatu class
Hal-hal yang dimiliki suatu class
Memiliki sifat seperti variabel

Membuat Property :
Seperti variabel tetapi terletak dalam sebuah class.

```
class Hewan {
	var mata = 0;
	var kaki = 0;
}
```
Mengakses Property :
Seperti menggunakan variabel tetapi melaui sebuah object.
```
void main() {

	var h1 = Hewan();
	print(h1.mata);
}

```

Method

Deskripsi :

Sifat suatu class
Aktivitas yang dapat dikerjakan suatu class
Memiliki sifat seperti fungsi

Membuat Method :

Seperti fungsi tetapi terletak dalam sebuah class.

```
class Hewan {
	void bersuara() {
		print(‘’);
}
}

```

Menjalankan Method :

Seperti menggunakan fungsi tetapi melalui sebuah object

```
void main() {


	var h1 = Hewan();
	h1.bersuara();

}
```


3. Keuntungan dan Penggunaan

Keuntungan menggunakan oop dalam mendevelop suatu project adalah supaya code mudah di-troubleshoot ketika terjadi suatu error ataupun bug, dan juga code seperti method property class yang sudah dibuat dapat digunakan ulang dengan mudah.	

Penggunaan oop sudah banyak digunakan di banyak bahasa pemrograman populer didunia ini seperti :

* C++
* C#
* Java
* Javascript
* Python
* Dart

