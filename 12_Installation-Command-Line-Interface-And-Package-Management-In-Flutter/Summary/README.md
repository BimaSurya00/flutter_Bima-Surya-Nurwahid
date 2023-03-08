**Flutter Command Line Interface & Flutter Package Management**

Outline

1. Flutter CLI

Deskripsi 

* Alat yang digunakan untuk berinteraksi dengan Flutter SDK
* Perintah dijalankan dalam terminal

2. Important CLI Commands

* Flutter Doctor

Perintah untuk menampilkan informasi software yang dibutuhkan flutter

```flutter doctor1```

* Flutter Create

Perintah untuk membuat project aplokasi flutter baru di directory tertentu

```flutter create <app_name>```

* Flutter Run

Perintah untuk menjalankan project aplikasi di device yang tersedia

```flutter run <dart_file>```

* Flutter Emulator

Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru

```flutter emulator```

```flutter emulators --launch <emulator_id>```

```flutter emulators --create [--name xys]```

* Flutter Channel

Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukan channel yang digunakan saat ini

```flutter channel```

* Flutter Pub

Ada dua syntax yang bisa kita gunakan yaitu :

* Flutter pub add, untuk menambahkan packages ke dependencies yang ada di pubspec.yaml

```flutter pub add <package_name>```

* Flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml

```flutter pub get```

* Flutter Build

Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dll

```flutter build <directory>```

* Flutter Clean

* Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator

* Perintah ini akan memperkecil ukuran project tersebut

```flutter clean```

3. Packages Management

Deskripsi :

* Flutter mendukung sharing packages

* Packages dibuat oleh developers lain

* Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch

* Mendapatkan packages di website pub.dev

Cara Menambahkan Packages 

* Cari package di pub.dev
* Copy baris dependencies yang ada di bagian installing
* Buka pubspec.yaml
* Paste barisnya dibawah dependencies pubspec.yaml
* Run flutter pub get di terminal 
* Import package di file dart agar bisa digunakan
* Stop atau restart aplikasi jika dibutuhkan
