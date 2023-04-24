// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:flutter_test/flutter_test.dart';

import 'package:uitesting/home_page.dart';

import 'package:uitesting/main.dart';

void main() {
  testWidgets('Judul halaman harus "My App"', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyApp(
        home: MyHomePage(),
      ),
    );
    expect(find.text('My App'), findsOneWidget);
  });

// testWidgets('Cek halaman contact dengan widget ContactPage',
//   (WidgetTester tester) async {
//     await tester.pumpWidget(
//       MaterialApp(
//         home: ContactPage(),
//       ),
//     );
//     expect(find.text('contact'), findsOneWidget);
//     expect(find.text('Create New Contact'), findsOneWidget);
//     expect(find.text('Daftar kontak'), findsOneWidget);
//   });

}
