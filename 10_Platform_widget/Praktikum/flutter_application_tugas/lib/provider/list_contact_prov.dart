import 'package:flutter/material.dart';

import '../model/modelList.dart';

class ContactProvider with ChangeNotifier {
  List<ListModel> _contacts = [];
  TextEditingController _namaController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  List<ListModel> get contacts => _contacts;

  TextEditingController get namaController => _namaController;
  TextEditingController get phoneController => _phoneController;

  void addContact(ListModel ListModel) {
    _contacts.add(ListModel);
    _namaController.clear();
    _phoneController.clear();
    notifyListeners();
  }

  void removeContact() {
    _contacts.removeLast();
    notifyListeners();
  }
}
