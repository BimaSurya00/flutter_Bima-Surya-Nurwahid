**REST API Client**

Represntational State Transfer Application Programming Interface

Deskripsi 

* Arsitektural yang memisahkan tampilan dengan proses bisnis

* Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request

HTTP

Deskripsi

Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web

Pola Komunikasi

* Client mengirim request

* Server mengolah dan membalas dengan memberi response

**Struktur Request**

* Url

Alamat halaman yang akan diakses

* Method (GET, POST, PUT, DELETE)

Menunjukkan aksu yang diinginkan

* Header

Informasi tambahan terkait request yang dikirimkan

* Body

Data yang disertakan bersama request

**Struktur Response**

* Status Code

Kode yang mewakili keseluruhan response, baik sukses maupun gagal

* Header

Informasi tambahan terkait response yang diberikan

* Body

Data yang disertakan bersama response

**Dio**

Deskripsi 

Sebagai HTTP Client

Dimanfaatkan untuk melakukan REST API

Instalasi
* Tambahkan dependency pada pubspec.yaml

* Jalankan perintah flutter pub get pada terminal

```
dependencies:
    dio:
```

Penggunaan

Mengambil data menggunakan Dio dan menampilkan hasilnya pada console

```
import 'package:dio/dio.dart';
Dio()
    .get("https://awadada.com")
    .then((response){
        print(response);
    });
```
Serialisasi JSON

* Cara penulisan data

* Javascript Object Notation

* Umum digunakan pada REST API

* Mengubah struktur data ke bentuk JSON

Menggunakan fungsi jsonEncode dari package dart:convert

```
import "dart:convert";
void main(){
    var dataMap = {...};
    var dataJson = jsonEncode(dataMap);
    print(dataJSON);
}
```

**Deserialisasi JSON**

Mengubah bentuk JSON ke struktur data

```
import "dart:convert";
void main(){
    var dataJSON = '...';
    var dataMap = jsonDecode(dataJSON);
    print(dataMap);
}
```