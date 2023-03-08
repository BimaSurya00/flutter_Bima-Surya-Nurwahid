**Flutter Platform Widget**


Abstract

Memanfaatkan widget dengan gaya berbeda pada android dan iOS.


Materi :

1. MaterialApp

Pengertian : 

Widget dasar yang mengemas seluruh widget dalam aplikasi
Widget yang digunakan pada sistem Android
Di-import dari pacakge:flutter/material.dart

Struktur 

Widget yang pertama kali dibuka, diletakkan pada bagian home.

```
MaterialApp(
	theme : ThemeData.dark(),//mengatur tema aplikasi
	home: const HomePage(),//halaman utama
);
```

Mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initialRoute.

```
MaterialApp(
	theme : ThemeData.dark(),//mengatur tema aplikasi
	home: const HomePage(),//halaman utama
	routes: {
		‘home’: (_) => const HomePage(), //mendaftarkan halaman pada routes
	},
);
```

Scaffold

Pengertian

Widget dasar untuk membangun halaman pada MaterialApp

Struktur


Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti

```
Scaffold(
	appBar: AppBar(...),//Bar menu bagian atas halaman
	drawer: Drawer(...),//menu bagian samping halaman
	body: …, //Bagian halaman utama
	bottomNavigationBar: bottomNavigationBar(...), //Menu bagian bawah halaman
);
```
2. CupertinoApp

Pengertian :

Widget dasar yang mengemas seluruh widget dalam aplikasi
Widget yang digunakan pada sistem iOS
Di-import dari package:flutter/cupertino.dart

Struktur:

Variabel _themeDark dibuat untuk menyimpan tema
Diperlukan karena Cupertino tidak menyediakan ThemeData.dark() seperti pada material

```
final _themeDark = const CupertinoThemeData.raw(
	Brightness.dark,
	null,
	null,
	null,
	null,
);

```

Struktur 

Widget yang pertama kali dibuka, diletakkan pada bagian home.

```
CupertinoApp(
	theme: _themeDark,//mengatur tema aplikasi
	home: const HomePage(), halaman utama
	);
```


CupertinoPageScaffold

Pengertian

Widget dasar untuk membangun sebuah halaman pada CupertinoApp

Struktur

Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti



```
CupertinoPageScaffold(
	navigationBar: CupertinoNavigationBar(...),//bar menu bagian atas halaman
	child: …,//bagian utama halaman
);

```

