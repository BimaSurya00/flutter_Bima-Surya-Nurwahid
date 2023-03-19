**Flutter Form**

1. Form

Deskripsi : 

* Menerima isian data dari pengguna

* Isisan data dapat lebih dari satu

Membuat FOrm

* Menggunakan StatefulWidget

* Keadaan form disimpan menggunakan GlobalKey<FormState>

```
var formKey = Global<FormState>

Form(
    key: formKey,
    child: inputWidgets,
);
```

2. Input

* Menerima isian data dari pengguna 

* Isian data dapat lebih dari satu

Membuat TextField

* Data diambil menggunakan TextEditingController

* Isian data berupa teks

```
var inputController = TextEditingController();

TextField(
    controlle: inputController,
);
```

Radio

* Memberi opsi pada pengguna

* Hanya dapat memilih satu opsi

Membuat Radio

* Data diambil menggunakan property dengan tipe data sesuai value pada radio

```
var radioValue = '';

Radio<String>(
    value: 'Laki-Laki',
    groupValue: radioValue,
    onChanged: (String? value){
        setState((){
            radioValue = value ?? '';
        });
    },
);

```

Checkbox

Membuat Checkbox

* Data diambil menggunakan property bertipe bool


```
var checkValue = false;

Checkbox(
    value: checkValue,
    onChanged: (bool? value){
        setState((){
            checkValue = value ?? false;
        });
    },
);
```

Dropdown Button

* Memberi opsi pada pengguna

* Hanya dapat memilih satu opsi

* Opsi tidak ditampilkan di awal, hanya tampil jika ditekan

Membuat DropDown Button

* Data diambil menggunakan property dengan tipe data sesuai value pada DropDownMenuItem


```

var dropdownValue = 0;

DropdownButton(
    value: dropdownValue,
    onChanged: (int? value){
        setState((){
            dropdownValue = value ?? 0;
        });
    },
    items: const [
        DropdownMenuItem(
            value: 0,
            child: Text('Pilih ...'),
        ),
        DropdownMenuItem(
            value: 1,
            child: Text('Satu'),
        ),
        DropdownMenuItem(
            value: 2,
            child: Text('Dua'),
        ),
        DropdownMenuItem(
            value: 3,
            child: Text('Tiga'),
        ),
    ],
);
```

3. Button

Deskripsi :

* Bersifat seperti tombol

* Dapat melakukan sesuatu saat ditekan

ElevatedButton

* Tombol yang timbul

* Jika ditekan, akan menjalankan onPressed

```
ElevatedButton(
    child const Text('Submit'),
    onPressed: (){
        print('tertekan');
    },
);
```

IconButton

* Tombol yang hanya menampilkan icon

* Jika ditekan, akan menjalankan onPressed

```
IconButton(
    icon: const Icon(Icon.add),
    onPressed: (){
        print('tertekan');
    },
);
```
