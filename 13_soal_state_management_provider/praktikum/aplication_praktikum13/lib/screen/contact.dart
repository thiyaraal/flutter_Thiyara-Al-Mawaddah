import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final List<Map<String, String>> _inputdata = [];
  final _formKey = GlobalKey<FormState>();

  void _data() {
    final String namaphone = _name.text;
    final String nomerphone = _phone.text;
    setState(() {
      _inputdata.add({'name': namaphone, 'number': nomerphone});
    });
    _name.clear();
    _phone.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Contact'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            const Icon(Icons.app_shortcut),
            const SizedBox(height: 5),
            const Text(
              'Create New Contacts',
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: const Text(
                'A dialog is a type ofmodal windowthat appears in front of app content to provide critical information, or prompt for a decision to made.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              indent: 24,
              endIndent: 24,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Insert Your Name',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          fillColor: Colors.deepPurple[50],
                          filled: true),
                      validator: (value) {
                        if (value == null || value.split(' ').length < 2) {
                          return 'Nama harus terdiri dari minimal 2 kata';
                        } else if (value[0] != value[0].toUpperCase()) {
                          return 'Nama harus dimulai dengan huruf kapital';
                        } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return 'Nama tidak boleh mengandung angka atau karakter khusus';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: _phone,
                      decoration: InputDecoration(
                          labelText: 'Number',
                          hintText: '+62 ...',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          fillColor: Colors.deepPurple[50],
                          filled: true),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null) {
                          return 'Nomor telepon harus diisi';
                        }
                        if (value.length < 7 || value.length > 15) {
                          return 'Panjang minimal 8 digit dan maksimal 15 digit';
                        }
                        if (value[0] != '0') {
                          return 'Nomor telepon harus mulai dari angka 0';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)))),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _data();
                    }
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Text(
              'List Contacts',
              style: TextStyle(fontSize: 28),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _inputdata.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  // color: Colors.purple[50],
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepPurple[100],
                      child: Text(
                        _inputdata[index]['name']?[0] ?? '-',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    ),
                    title: Text(
                      _inputdata[index]['name']!,
                    ),
                    subtitle: Text(
                      _inputdata[index]['number']!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            _editData(index);
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _inputdata.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _editData(int index) {
    final TextEditingController editNamaphone =
        TextEditingController(text: _inputdata[index]['name']);
    final TextEditingController editNomerPhone =
        TextEditingController(text: _inputdata[index]['number']);
    final editFormKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Contact'),
          content: Form(
            key: editFormKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: editNamaphone,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value == null || value.split(' ').length < 2) {
                      return 'Name must be at least 2 words';
                    } else if (value[0] != value[0].toUpperCase()) {
                      return 'Name must start with a capital letter';
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Name cannot contain numbers or special characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: editNomerPhone,
                  decoration: const InputDecoration(labelText: 'Number'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null) {
                      return 'Phone number must be filled in';
                    }
                    if (value.length < 7 || value.length > 15) {
                      return 'Must be between 8 and 15 digits long';
                    }
                    if (value[0] != '0') {
                      return 'Phone number must start with 0';
                    }
                    return null;
                  },
                ),
                Row(
                  children: <Widget>[],
                )
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Save'),
              onPressed: () {
                if (editFormKey.currentState!.validate()) {
                  setState(() {
                    _inputdata[index]['name'] = editNamaphone.text;
                    _inputdata[index]['number'] = editNomerPhone.text;
                  });
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
