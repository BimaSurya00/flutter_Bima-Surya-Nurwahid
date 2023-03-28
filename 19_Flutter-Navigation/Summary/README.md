**Flutter Navigation**

**Apa itu Navigation?**

Deskripsi:

Navigation adalah berpindah dari halaman satu ke halaman lain


**Navigation Dasar**

Deskripsi: 

* Perpindahan halaman menggunakan

```
Navigator.push()
```

* Kembali ke halam sebelumnya menggunakan 
```
Navigator.pop()
```

**Perpindahan Halaman**

```
class HomeScreen extends StatelessWidget{
    const HomeScreen({key? key}) : super(key: key);

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appbar: Appbar(
                title: const Text('home screen'),
            ),
            body: Center(
                child: ElevatedButton(
                    child: const Text('go to about page'),
                    onPressed: (){

                        //navigator
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => const AboutScreen()),
                        );
                    },
                ),
            ),
        );
    }
}

```

**Mengirim Data ke Halaman Baru**

Menggunakan parameter pada constructor halaman

```
ElevatedButton(
    child: const Text('go to about page'),
    onPressed: (){
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (_) => const AboutScreen(parameter: 'about'),
            ),
        );
    },
);
```

```
class AboutScreen extends StatelessWidget{

    final String parameter;
    const AboutScreen({key? key, required this.parameter}) : super(key: key);

    @override
    Widget build(BuildContext context){
        return ...;
    }
}
```

**Navigation dengan Named Routes**

Deskripsi:

Tiap halaman memiliki alamat yang disebut route

Perpindahan Halaman menggunakan

```
Navigator.pushNamed()
```

Kembali ke halaman sebelumnya menggunakan 

```
Navigator.pop()
```


**Mendaftarkan Route**

* Tambahkan initialRoute dan routes pada MaterialApp
* Tiap route adalah fungsi yang membentuk halaman

```
MaterialApp(
    debigShowCheckedModeBanner: false,

    initialRoute: '/'

    routes:{
        '/': (_) => const HomeScren(),
        '/about': (_) => const AboutScreen(),
    },
);
```

**Perpindahan halaman**

```
ElevatedButton(
    child: const Text('go to about page'),
    onPressed: (){

        //pindah ke halaman dengan nama route /about
        Navigator.of(context).pushNamed('/about');
    },
);
```
