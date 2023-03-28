**Assets**

Deskripsi :

* File yang di bundled dan di deployed bersamaan dengan aplikasi 

* Tipe-tipe assets, seperti: static data (JSON files), icons, images, dan font file (ttf)

Menentukan Assets

* Flutter menggunakan pubspec.yaml

* Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi

* Gunakan karakter "/" untuk memasukan semua assets dibawah satu directory name

**Image**

Dekripsi :

* Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik

* Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIF, PNG, BMP, dan WBMP

* Menampilkan gambar dari project asset dan internet

Loading Images

* Gunakan widget Image

* Membutuhkan properti image dengan nilai class AssetImage()

* Menggunakan method Image.asse, mendapatkan image yang sudah ditambahkan dalam project

* Menggunakan method image.network, mendapatkan data image melalui internet dengan menggunakan string url nya

cth:

```
body: Column(
    children:[
        Image.asset('assets/background.png'),
        Image.network('https://pinterest/background/id/12'),
    ],
),

```

**Font**

Deskripsi :


* Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi

* Penentuan font yang mau dipakai biasa nya oleh UI designer

* Penerapan font menggunakan custom font atau dari package


Custom Font

Cara menggunakan custom font:

1. Cari dan download font
2. Inport file .ttf
3. Daftarkan font di pubspec.yaml

jika sudah

cth penggunaan font dalam code

```
return MaterialApp(
    title: 'Font'
    theme: themeData(fontFamily: 'Rowdise'),//menggunakan font yang sudah di daftarkan dipubspec.yaml
)

```

Font dari Package

1. Tambahkan package google_font di dependencies
2. Import package di file dart
3. Gunakan font dengan memanggil GoogleFonts.namaFont()

```
Text(
    'Test Font', 
    style: GoogleFonts.rowdies(fontSize: 30),
),
```

**Aplikasi Task Management (Continue)**

Menambahkan Image

```
return Container(
    alignment: Alignment.center,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
            Image(
                image: AssetImage(
                    'assets/background.png',
                ),
                height: 250,
            ),
        ],
    ),
);

```


Membuat Profile Picture:


```
CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage('assets/profile.jpg'),
),

//menambahkan font

Text(
    'budi',
    style: GoogleFonts.poopins(
        fontSize: 20,
        fontWeight: FontWeight.bold,
    ),
),
```


