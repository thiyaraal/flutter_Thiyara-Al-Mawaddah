import 'package:flutter/material.dart';
import 'package:flutter_application_tugas/models/models.dart';

class ContactProvider with ChangeNotifier {
  final List<ListModel> _contacts = [];
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  // TextEditingController _editNameController = TextEditingController();
  // TextEditingController _editNumberController = TextEditingController();
  // List<Map<String, String>> _myData = [];
  List<ListModel> get contacts => _contacts;

  TextEditingController get namaController => _namaController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get editNameController => _namaController;
  TextEditingController get editNumberController => _phoneController;

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

  // void _editdata(int index) {
  //   _myData[index]['name'] = editNameController.text;
  //   _myData[index]['number'] = editNumberController.text;
  //   final editFormKey = GlobalKey<FormState>();
  // }
}
