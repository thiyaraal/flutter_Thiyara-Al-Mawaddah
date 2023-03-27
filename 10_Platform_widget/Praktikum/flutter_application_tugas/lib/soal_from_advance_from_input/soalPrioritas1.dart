import 'package:flutter/material.dart';
import 'package:flutter_application_tugas/models/models.dart';
import 'package:flutter_application_tugas/soal_from_advance_from_input/header.dart';
import 'package:flutter_application_tugas/soal_from_advance_from_input/textField.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../provider/list_contact_prov.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizedBox tinggi = SizedBox(height: 10);
    final _contactProvider = Provider.of<ContactProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      // backgroundColor: fromCssColor('#6200EE'),
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Header(),
                tinggi,
                // Container(
                //   color: Color.fromRGBO(231, 224, 236, 1),
                //   child: TextFormField(
                //     controller: _contactProvider.namaController,
                //     // maxLength: 20,
                //     decoration: const InputDecoration(
                //       contentPadding:
                //           EdgeInsets.only(top: 10, right: 10, left: 10),
                //       floatingLabelBehavior: FloatingLabelBehavior.always,
                //       fillColor: Colors.amber,
                //       hintText: 'Insert Your Name',
                //       labelText: 'Name',
                //     ),
                //   ),
                // ),
                tinggi,
                TeksField(
                  labelText: 'Insert Your Name',
                  hintText: "name",
                  controller: _contactProvider.namaController,
                ),
                // Container(
                //   color: Color.fromRGBO(231, 224, 236, 1),
                //   child: TextFormField(
                //     controller: _contactProvider.phoneController,
                //     // maxLength: 20,
                //     decoration: const InputDecoration(
                //       contentPadding:
                //           EdgeInsets.only(top: 10, right: 10, left: 10),
                //       floatingLabelBehavior: FloatingLabelBehavior.always,
                //       fillColor: Colors.amber,
                //       hintText: '+62',
                //       labelText: 'Nomor',
                //     ),
                //   ),
                // ),
                tinggi,
                TeksField(
                  labelText: '+62',
                  hintText: "nomor",
                  controller: _contactProvider.phoneController,
                ),
                tinggi,
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 100,
                    height: 32,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(138, 60, 195, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        _contactProvider.addContact(ListModel(
                            nama: _contactProvider.namaController.text,
                            phone: _contactProvider.phoneController.text));
                      },
                      child: const Text(
                        "submit",
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: List.generate(
                      _contactProvider.contacts.length,
                      (index) => ListTile(
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.edit)),
                                IconButton(
                                    onPressed: _contactProvider.removeContact,
                                    icon: const Icon(Icons.delete)),
                              ],
                            ),
                            leading: const CircleAvatar(
                              child: Text('A'),
                            ),
                            title: Text(
                                _contactProvider.contacts[index].nama ?? " "),
                            subtitle: Text(
                                _contactProvider.contacts[index].phone ?? ""),
                          )),
                )
              ],
            )),
      ),
    );
  }
}

// void _editData(int index) {
//     final TextEditingController editNameController =
//         TextEditingController(text: _mydata[index]['name']);
//     final TextEditingController editNumberController =
//         TextEditingController(text: _myData[index]['number']);
//     final editFormKey = GlobalKey<FormState>();

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Edit Contact'),
//           content: Form(
//             key: editFormKey,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextFormField(
//                   controller: editNameController,
//                   decoration: const InputDecoration(labelText: 'Name'),
//                   validator: (value) {
//                     if (value == null || value.split(' ').length < 2) {
//                       return 'Name must be at least 2 words';
//                     } else if (value[0] != value[0].toUpperCase()) {
//                       return 'Name must start with a capital letter';
//                     } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
//                       return 'Name cannot contain numbers or special characters';
//                     }
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 10),
//                 TextFormField(
//                   controller: editNumberController,
//                   decoration: const InputDecoration(labelText: 'Number'),
//                   keyboardType: TextInputType.number,
//                   validator: (value) {
//                     if (value == null) {
//                       return 'Phone number must be filled in';
//                     }
//                     if (value.length < 7 || value.length > 15) {
//                       return 'Must be between 8 and 15 digits long';
//                     }
//                     if (value[0] != '0') {
//                       return 'Phone number must start with 0';
//                     }
//                     return null;
//                   },
//                 ),
//                 Row(
//                   children: <Widget>[],
//                 )
//               ],
//             ),
//           ),
//           actions: [
//             ElevatedButton(
//               child: const Text('Cancel'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Save'),
//               onPressed: () {
//                 if (editFormKey.currentState!.validate()) {
//                   setState(() {
//                     _myData[index]['name'] = editNameController.text;
//                     _myData[index]['number'] = editNumberController.text;
//                   });
//                   Navigator.of(context).pop();
//                 }
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
