**Dart Object Oriented Programming**

1. Pengenalan OOP dart

Object Oriented Programming atau yang biasa disebut oop adalah pemrograman yang berorientasi pada objek yang merupakan model pemrograman komputer dengan pengaturan desain perangkat lunak di sekitar data atau objek. Berbeda dengan pemrograman lain yang berfokus pada fungsi dan logika, OOP lebih menaruh fokus pada objek atau bidang data yang memiliki atribut atau perilaku teknis unik. Fokus OOP pada objek ini memungkinkan adanya manipulasi yang dilakukan pengembang dan cocok untuk pemrograman besar dan kompleks.



2. Materi komponen OOP

Constructor

Deskripsi :

Method yang dijalankan saat pembuatan object
Dapat menerima parameter
Tidak memiliki return
Nama sama dengan nama class

Contoh Constructor
```
class Hewan {
	var mata;
	var kaki;

	Hewan() {
		mata = 0;
		kaki = 0;
	}
}
```


Inheritance

Deskripsi :

Membuat class baru dengan memanfaatkan class yang sudah ada
Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru

Contoh inheritance :

Menambah extends saat pembuatan class baru

```
class Kambing extends Hewan {
	Kambing(){
		mata = 2;
		kaki = 4;
	}
}
```

Method Overriding

Deskripsi :

Menulis ulang method yang ada pada super-class
Bertujuan agar class memiliki method yang sama, dengan proses yang berbeda

Melakukan overriding 

Dilakukan pada class yang melakukan inheritance 
Method sudah ada pada class induk
Method ditulis ulang seperti membuat method baru pada class anak
Ditambahkan tanda @override di baris sebelum method dibuat

```
class Kambing extends Hewan {
	@override 
	reproduksi() {
		print(‘melahirkan’);
	}

	@override 
	bernapas() {
		print(‘paru-paru’);
	}

}
```




Interface

Deskripsi :

Berupa class
Menunjukkan method apa saja yang ada pada suatu class
Seluruh method wajib di-override 
Digunakan dengan menggunakan implements

contoh interface

sekilas mirip inheritance, pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk



```
class Kambing extends Hewan {
	@override 
	reproduksi() {
		print(‘melahirkan’);
	}
	@override 
	bernapas() {
		print(‘paru-paru’);
	}

}
```
Anggap saja class induk Hewan mempunyai method reproduksi() dan bernapas() jadi harus dioverride ke class implements nya.


Abstract Class

Deskripsi :

Berupa class abstrak
Mennunjukkan method apa saja yang ada pada suatu class
Digunakan dengan menggunakan extends
Tidak dapat dibuat object 
Tidak semua method harus di-override

abstract class

```
	abstract class Hewan{
	reproduksi() {
		print(‘melahirkan’);
	}
	bernapas() {
		print(‘paru-paru’);
	}

}
```

melakukan override ke salah satu method

```
	class Kambing extends Hewan {
	@override 
	reproduksi() {
		print(‘melahirkan’);
	}
}
```

	
Polymorphism

Deskripsi :

Kemampuan data berubah menjadi bentuk lain
Tipe data yang dapat digunakan adalah super class
Dapat dilakukan pada class dengan extends atau implements

Generics

Deskripsi :

Dapat digunakan pada class atau fungsi
Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda
Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi

Membuat class dengan generics :

Class hadiah dapat dimasukkan data dengan tipe T
Tipe T dapat digunakan di seluruh class Hadiah

```
class Hadiah<T> {
	var isi;

	Hadiah(T i){
		isi = i;
	}
}
```

Menggunakan class dengan generics

Setelah nama class, menjadi tempat tipe data yang diinginkan

```

void main() {



	var h1 = Hadiah<String>(‘mobil’);
	print(h1.isi);

	var h2 = Hadiah<int>(10);
	print(h2.isi);
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





