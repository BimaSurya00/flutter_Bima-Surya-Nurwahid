**Flutter Animation**

**Animation**

Deskripsi :

* Animasi membuat aplikasi terlihat hidup

* Widget yang bergerak menambah daya tarik

* Pergerakan dari kondisi A ke kondisi B

**Implicit Animation**

Deskripsi :

* Versi animasi dari widget yang sudah ada

**Transition**

Deskripsi :

* Animasi yang terjadi saat perpindahan halaman

* Dilakukan pada bagian Navigator.push()

contoh code penggunaan transition

```
Navigator.of(context).push(
    PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation){
            return const AboutScreen();
        },

        transitionBuilder: (context, animation, secondaryAnimation, child){
            final tween = Tween(begin: const Offset(0, .5), end: Offset.zero);

            return SlideTransition(
                position: animation.drive(tween),
                child: child,
            );
        },
    ),
);
```

Transition Yang Umum


**FadeTransition**

Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh

```
final tween = Tween(begin: 0.0, end: 1.0);
return FadeTransition(
    opacity: animation.drive(tween),
    child: child,
);
```

**ScaleTransition**

Halaman muncul dengan efek berubah ukuran dari tidak penuh menuju keseluruhan 

```
final tween = Tween(begin: 0.0, end: 1.0);
return ScaleTransition(
    scale: animation.drive(tween),
    child: child,
);
```


