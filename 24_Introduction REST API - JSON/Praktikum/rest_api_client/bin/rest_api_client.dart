import 'dart:convert';
import 'package:dio/dio.dart';

// void main() {
//   Dio()
//       .get(
//           "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts")
//       .then((response) {
//     print(response.data);
//   });
// }
void main() async {
  final dio = Dio();

  final contact = {
    'name': 'John Doe',
    'email': 'johndoe@example.com',
    'phone': '555-1234',
  };

  try {
    final response = await dio.post(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      data: jsonEncode(contact),
      options: Options(
        headers: {'Content-Type': 'application/json'},
      ),
    );

    print(response.statusCode);
    print(response.data);
  } catch (e) {
    print(e);
  }
}

// class Contact {
//   final String id;
//   final String name;
//   final String phone;

//   Contact({
//     required this.id,
//     required this.name,
//     required this.phone,
//   });

//   factory Contact.fromJson(Map<String, dynamic> json) {
//     return Contact(
//       id: json['id'].toString(),
//       name: json['name'],
//       phone: json['phone'],
//     );
//   }
// }
// void main() async {
//   final dio = Dio();

//   try {
//     final response = await dio.get(
//       'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
//     );

//     final json = response.data;
//     final contact = Contact.fromJson(json);

//     print(contact.id);
//     print(contact.name);
//     print(contact.phone);
//   } catch (e) {
//     print(e);
//   }
// }
