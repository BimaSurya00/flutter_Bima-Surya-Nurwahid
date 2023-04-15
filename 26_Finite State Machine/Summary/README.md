**Finite State Machines**

Apa itu Finite State Machine ?

* Mesing yang memiliki sejumlah state
* Tiap state menunjukkan apa yang terjadi sebelumnya

Contoh :

Terdapat 3 state yang menunjukkan kejadian dalam suatu proses 

* IDDLE saat tidak terjadi proses
* RUNNING saat proses sedang berjalan
* ERROR saat proses gagal diselesaikan


Contoh Sukses

* IDDLE berubah menjadi RUNNING saat proses berjalan 

* RUNNING kembali menjadi IDDLE saat proses selesai

Contoh Gagal

* IDDLE berubah menjadi RUNNING saat proses berjalan

* RUNNING menjadi ERROR saat terjadi kegagalan

* ERROR kembali menjadi IDDLE

**Implementasi pada View-Model**

Menambah Enum

Membuat enum untuk masing-masing state:

* none saat IDDLE
* loading saat RUNNING
* error saat ERROR

```
enum ContactViewState {
    none,
    loading,
    error,
}
```

Menambah Getter-Setter

Membuat getter-setter untuk menyimpan state dari widget

```
class ContactViewModel with ChangeNotifier {
    ContactViewState _state = ContactViewState.none;

    ContactViewState get state => _state;

    changeState(ContactViewState s){
        _state = s;
        notifyListeners();
    }
}
```
Gunakan State

Tiap proses yang perlu state tersebut, dapat memanfaatkannya

```
class ContactViewModel with ChangeNotifier {

    getAllContacs() async {
        changeState(ContactViewState.loading);

        try {
            final c = await ContactAPI.getAllContacts();
            _contacts = c;
            notifyListeners();
            changeState(ContactViewState.none);
        } catch(e){
            changeState(ContactViewState.error);
        }
    }
}
```

**Implementasi pada Widget**

Perbedaan Tampilan Tiap State

Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan

```
Widget body(ContactViewModel viewModel){
    final isLoading = viewModel.state == ContactViewState.loading;
    final isError = viewModel.state == ContactViewState.error;

    if(isLoading){
        return const Center(child: CircularProgressIndicator());
    }

    if(isError){
        return const Center(child: Text('Gagal mengambil data'));
    }

    return listView(viewModel);
}
```


**Unit Test**

Apa itu Unit Test?

* Salah satu jenis pengujian pada perangkat lunak

* Pengujian dilakukan pada unit dalam perangkat lunak

* Unit yang dimaksud umumnya adalah fungsi atau method

Tujuan Unit Test

* Memastikan fungsi dapat mengolah berbagai jenis input

* Memastikan hasil dari suatu fungsi atau method sudah sesuai

* Menjadi dokumentasi

Bagaimana Melakukan Unit Test?

Manual

Unit dijalankan dan dicek hasilnya secara manual

Automated

Menulis script yang dapat dijalankan berkali-kali menggunakan test runner


**Mocking**

Apa itu Mocking?

* Proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian

* Pengaruh tersebut dapat menggangu proses pengujian

* Dilakukan mocking untuk menghindari masalah-masalah tersebut


Bagaimana Cara kerja Mocking?

* Suatu object dibentuk tiruannya

* Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli

* Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal
