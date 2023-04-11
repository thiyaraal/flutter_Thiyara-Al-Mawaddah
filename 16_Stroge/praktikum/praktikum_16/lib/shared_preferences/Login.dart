import 'package:flutter/material.dart';
import 'package:praktikum_16/shared_preferences/contact.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LOGINSCREEN extends StatefulWidget {
  LOGINSCREEN({Key? key}) : super(key: key);

  @override
  State<LOGINSCREEN> createState() => _LOGINSCREENState();
}

class _LOGINSCREENState extends State<LOGINSCREEN> {
  final _name = TextEditingController();
  final _password = TextEditingController();

  saveData() async {
    final localStorage = await SharedPreferences.getInstance();
    localStorage.setString("namaUser", _name.text.toString());
    localStorage.setString("passUser", _password.text.toString());

    String? namaUser = localStorage.getString("namaUser");
    String? passUser = localStorage.getString("passUser");

    if (_name.text == "" && _password.text == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          action: SnackBarAction(label: "undo", onPressed: () {}),
          content: Text(
            'username dan password harus di isi',
          ),
        ),
      );
      print('tidak bisa login');
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => FieldText(name: namaUser ?? "")
          //  MYHOME(
          // name: namaUser ?? "",
          // pass: passUser ?? "")
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN0RAfgwE_j9gvK2IU-yWznn7eITxbj0p-YB8YVTwJwGh6J5_HBDpuCyujWfBVzBYJ_70&usqp=CAU")),
            TextField(
              controller: _name,
              decoration: const InputDecoration(
                hintText: 'input nama',
              ),
            ),
            TextField(
              controller: _password,
              decoration: const InputDecoration(
                hintText: 'input password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  onPressed: () {
                    saveData();
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
