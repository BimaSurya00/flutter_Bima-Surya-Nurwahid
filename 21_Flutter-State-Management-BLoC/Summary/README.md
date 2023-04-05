**Flutter State Management (BLoC)**

State Management

**Declarative UI**

Deskripsi:

* Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini

State

Deskripsi:

* State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori

* Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah

* Ada 2 jenis state dalam flutter, ephmeral state dan app state

**Ephemeral State**

* Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widget nya, contohnya:
    1. PageView
    2. BottomNavigationBar
    3. Switch Button

* Tidak perlu state management yang kompleks

* Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

**App State**

* Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya:

    1. Login info
    2. Pengaturan preferensi pengguna
    3. Keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda

**Pendekatan State Management**

* setState
Lebih cocok penggunaan nya pada ephenerak state

* Provider 
Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari

* Bloc
Menggunakan pola stream /obeservable, untuk memisahkan UI dengan bisnis logic nya

**Provider**

Membuat aplikasi Shop Cart menggunakan pendekatan state management dengan Provider

1. Install Package Provider
    * Tambahkan package Provider di pubspec.yaml

    Deskripsi:

    Class yang perlu diperhatikan penggunaan provider, yaitu:

    * Dari Package Provider
        1. ChangeNotifierProvider
        2. MultiProvider
        3. Consumer
    
    * Built in class dari flutter SDK
        1. ChangeNotifier

ChanegNotifier

*   Class yang menambah dan menghapus listeners
*   Digunakan dengan cara meng-extends
*   Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga UI nya harus dibangun ulang

    

Consumer
* Widget yang mendengarkan perubahan kelas yang mengimplementasikan ChangeNotifier
* Membangun ulang widget yang dibungkus Consumer saja
* Penting untuk meletakan Consumer pada lingkup sekecil mungkin 
* Membutuhkan properti builder yang berisi context, model, dan child

BLoC

Deskripsi:
* BLoC (Business Logic Component)
* Memisahkan antara business logic dengan UI

Kenapa BLoC

1. Simple
2. Powerful
3. Testable

Cara Kerja BLoC
* Menerima event sebagai input
* DIanalisa dan Dikelola di dalam BLoC
* Menghasil state sebagai output

Stream
* Rangkaian proses secara asynchronus
* Actor utama di dalam BLoC
