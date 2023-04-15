**UI Testing**

Apa itu UI Testing?

Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna

UI Testing di Flutter 

Disebut juga widget testing sehingga pengujian dilakukan pada widgets dengan menulisjan script yang dapat dijalankan secara otomatis

**Keuntungan UI Testing**

* Memastikan seluruh widget memberi tampilan yang sesuai

* Memastikan seluruh interaksi dapat diterima dengan baik

* Menjadi ketentuan yang haris diikuti saat diperlukan perubahan pada widget

**Melakukan UI Testing**

Instalasi Package Testing

Pada umumnya, package testing sudah ter-install sejak project flutter pertama kali dibuat.

Penulisan Script Testing 

* Dilakukan pada folder test

* Nama file harus diikuti _test.dart

* Tiap file berisi fungsi main() yang di dalamnya dapat dituliskan script testing

* Tiap sekenario pengujian disebut test case

```
void main(){
    testWidgets('Judul halaman harus ...', (WidgetTester tester) async {
        // ...
    });
}

```
```

testWidgets('Judul halaman harus About Screen', (WidgetTester tester) async {
    await tester.pumpWidget(
        const MaterialApp(
            home: Aboutcreen(),
        ),
    );

    expect(find.text('About Screen'), findsOneWidget);
});

```

Menjalankan Testing 

* Perintah *flutter test* akan menjalankan seluruh file test yang dibuat

* Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil