import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../model/modelList.dart';
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
                Icon(Icons.phone),
                tinggi,
                Text(
                  'Create New Contact',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        letterSpacing: .5, fontSize: 20, color: Colors.teal),
                  ),
                ),
                tinggi,
                const Text(
                    'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. '),
                const Divider(),
                tinggi,
                Container(
                  color: Color.fromRGBO(231, 224, 236, 1),
                  child: TextFormField(
                    controller: _contactProvider.namaController,
                    // maxLength: 20,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 10, right: 10, left: 10),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      fillColor: Colors.amber,
                      hintText: 'Insert Your Name',
                      labelText: 'Name',
                    ),
                  ),
                ),
                tinggi,
                Container(
                  color: Color.fromRGBO(231, 224, 236, 1),
                  child: TextFormField(
                    controller: _contactProvider.phoneController,
                    // maxLength: 20,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 10, right: 10, left: 10),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      fillColor: Colors.amber,
                      hintText: '+62',
                      labelText: 'Nomor',
                    ),
                  ),
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
                // Container(
                //   child: ListTile(
                //     trailing: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         IconButton(
                //             onPressed: () {}, icon: const Icon(Icons.edit)),
                //         IconButton(
                //             onPressed: () {}, icon: const Icon(Icons.delete)),
                //         IconButton(
                //             onPressed: () {}, icon: const Icon(Icons.add_box)),
                //       ],
                //     ),
                //     title: Text('s'),
                //     subtitle: Text('d'),
                //     leading: CircleAvatar(
                //       child: Text('d'),
                //     ),
                //   ),
                // ),
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
