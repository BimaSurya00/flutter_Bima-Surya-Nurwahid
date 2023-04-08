**Storage**

**Penyimpanan Lokal**

Deskripsi:

* Diperlukan untuk efisiensi penggunaan data internet

* Ada beberapa cara implementasi penyimpanan lokal, contoh nya seperti:

- Shared Preferences

- Local Database

**Shared Preference**

Implementasi Shared Preference

* Menambahkan shared preference pada fitur login

STEP 1: Tambahkan package shared_preference

```
dependencies:
    flutter:
        sdk: flutter
    email_validator: ^2.0.1
    shared_preference: ^2.0.12
```

STEP 2: Buat properti baru untuk TextEditingController dan tambahkan di setiap TextFormField

```
final _namaController = TextEditingController();
final _emailController = TextEditingController();
final _passwordController = TextEditingController();

```
STEP 3: Buat method dispose(), untuk menghindari kebocoran memori

```
@override
void dispose(){
    _namaController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
}
```

STEP 4: Buat variabel baru untuk menyimpan SharedPreference dan nilai bool newUser

STEP 5: Buat method baru dengan nama checkLogin()

```
late SharedPreferences logindata;
late bool newUser

void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if(newUser == false){
        Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(
                builder: (context) => const HomePage(),
            ),
            (route) => false);
        ),
    }
}
```

STEP 6: Panggil method checkLogin() di method initState()

```
@override
void initState(){
    super.initState();
    checkLogin();
}
```
STEP 7: Di dalam onPressed ElevatedButton, buat variabel baru username untuk menampung input dari user

```
ElevatedButton(
    onPressed: (){
        final isValidForm = formKey.currentState!.validate();

        String username = _nameController.text;
        if(isValidForm){
            Navigator.pushAndRemoveUntil(
                context, MaterialPageRoute(
                    builder: (context) => const HomePage(),
                ),
                (route) => false);
            
        }
    }
    child: const Text('Login'),
)
```
Deskripsi:

* Menyimpan data yang sederhana

* Penyimpanan dengan format key-value

* Menyimpan tipe data dasar seperti teks, angka, dan boolean

* Contoh penggunaan shared preference seperti menyimpan data login dan menyimpan riwayat pencarian

**Local Database (SQlite)**

Deskripsi :

* Menyimpan dan meminta data dalam jumlah besar pada local device

* Bersifat privat

* Menggunakan SQlite database melalui package sqflite

* SQlite adalah database open source yang mendukung insert, read, update dan remove data