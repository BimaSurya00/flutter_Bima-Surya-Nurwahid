**Flutter**

1. Pekenalan Flutter

**Apa itu flutter?** 

Flutter merupakan alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web

2. Keunggulan Flutter

Mudah digunakan dan dipelajari
Produktivitas tinggi
Dokumentasi lengkap
Komunitas yang berkembang

Bagian dari Flutter

SDK(Software Development Kit)

Alat-alat untuk membantu proses pengembangan aplikasi

Framework

Perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi


Membuat Project

Dilakukan dengan menjalankan perintah:

```
flutter create <nama_project”
```

Menjalankan Project

Masuk Ke direktori project

jalankan perintah 
```
flutter run
```


File Utama

Pertama kali dibaca dan dijalankan
Dalam direktori lib



3. Materi Flutter

Widget

Deskripsi 

Digunakan untuk membentuk antarmuka (UI)
Berupa class
Dapa terdiri dari beberapa widget lainya

Jenis

Stateless Widget

Deskripsi :

Tidak bergantung pada perubahan data
Hanya fokus pada tampilan
Dibuat dengan extends pada class Stateless widget

Membuat Stateless Widget

```
class name extends StatelessWidget {
  const name({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

```



Statefull Widget

Deskripsi :

Mementingkan pada perubahan data
Dibuat dengan extends pada class StatefulWidget
1 widget menggunakan 2 class (widget dan state)


Membuat Stateful widget

```
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
 
  @override
  State<MyWidget> createState() => _MyWidgetState();
}
 
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

Built in Widget

Deskripsi :

Widget yang dapat langsung digunakan
Sudah terinstall bersama flutter

MaterialApp

Membangun aplikasi dengan desain material 

```
const MaterialApp(
	home: Text(‘Selamat Datang di Flutter’),
	);
```

Scaffold 

Membentuk sebuah halaman


```
const Scaffold(
	body: Text(‘Selamat Datang di Flutter’),
	);
```

AppBar

Membentuk application bar yang terletak pada bagian atas halaman
```
AppBar(
	title: const Text(‘Home’),
	);
```




