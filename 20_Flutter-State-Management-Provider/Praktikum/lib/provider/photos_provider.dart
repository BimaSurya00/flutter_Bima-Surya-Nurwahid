import 'package:flutter/material.dart';
import '../model/model_image.dart';

class PhotosProvider with ChangeNotifier {
  final List<ImageModel> _dataImage = [
    ImageModel(
        url:
            'https://i.pinimg.com/564x/8b/2e/ad/8b2ead0d88d93361fea9347a5260ce58.jpg'),
    ImageModel(
        url:
            'https://i.pinimg.com/564x/d8/ff/30/d8ff3064a3067ac45a70f762f4977d90.jpg'),
    ImageModel(
        url:
            'https://i.pinimg.com/564x/7e/fe/39/7efe3973aefe224b1c963e00327efc81.jpg'),
    ImageModel(
        url:
            'https://i.pinimg.com/564x/f9/a6/12/f9a6129b0d10fd385e85a8cc50e25e15.jpg'),
  ];

  List<ImageModel> get data => _dataImage;

  get dataImage => null;

  // void addImage(ImageModel imageModel) {
  //   _dataImage.add(imageModel);
  //   notifyListeners();
  // }
}

// class ContactsProvider with ChangeNotifier{

//   final List<String> _contacts = [];

//   List<String> get contacts => _contacts;

//   void addContact(String contact){
//     _contacts.add(contact);
//     notifyListeners();
//   }

//   void removeContact(String contact){
//     _contacts.remove(contact);
//     notifyListeners();
//   }

//   void updateContact(String contact, String newContact){
//     _contacts[_contacts.indexOf(contact)] = newContact;
//     notifyListeners();
//   }
// }
