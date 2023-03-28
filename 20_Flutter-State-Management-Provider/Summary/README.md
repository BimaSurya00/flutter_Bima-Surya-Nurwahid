**Flutter Global State Management**

**Pengertian State**

Deskripsi:

* Data yang dapat dibaca saat pembuatan widget
* Dapat berubah saat widget sedang aktif
* Hanya dimiliki oleh StatefulWidget

**Kenapa perlu global state?**

Agar antara widget dapat memanfaatkan state yang sama dengan mudah

Cara memanfaatkan state

* DibUat sebagai property dari class
* Digunakan pada widget saat build

Mengubah state

* Menggunakan method setState

```
ElevatedButton(
    child: const Text('Tambah'),
    onPressed: (){
        setState((){
            number = number + 1;
        });
    },
);

```

**Global State**

Deskripsi:

* State biasa yang dapat digunakan pada seluruh widget

Provider

* State management

* Perlu di install agar dapat digunakan

Instalasi Provider

* Menambah package provider pada bagian dependencies dalam file pubspec.yaml

* Jalankan perintah *flutter pub get*

Membuat State Provider

* Buat file bernama contact.dart

* Definisikan state dalam bentuk class

```
class Contact with ChangeNotifier {

    List<Map<String, String>> _contacts = [];

    List<Map<String, String>> get contacts => _contacts;

    void add(Map<String,String> contact){
        _contacts.add(contact);
        notifyListeners();
    }
}

```

Mendaftarkan State Provider

* Import dalam file main.dart
* Daftarkan pada runApp dengan MultiProvider

```
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'
import 'package:phonebookapp/stores/contact.dart' as contact_store;

void main(){
    runApp(
        MultiProvider(
            providers:[
                ChangeNotifierProvider(create: (_) => contact_store.Contact())
            ],
            child: MyWiget(),
        ),
    );
}
```

Menggunakan State dari Provider

* Simpan provider dalam variabel
* Ambil data dari provider melalui getter

```
final contactProvider = Provider.of<contact_store.Contact>(context);

ListView.builder(
    itemCount: contactProvider.contacts.length,
    itemBuilder: (context, index){
        return ListTile(
            title: Text(contactProvider.contacts[index]['name'] ?? ''),
            subtitle: Text(contactProvider.contacts[index]['phone'] ?? ''),
        );
    },
);      

```

