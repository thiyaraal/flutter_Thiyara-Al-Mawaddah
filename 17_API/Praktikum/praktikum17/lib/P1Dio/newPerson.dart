import 'package:flutter/material.dart';

import 'person.dart';

class NewPersonCard extends StatelessWidget {
  final NewPerson newPerson;

  const NewPersonCard({Key? key, required this.newPerson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update')),
      body: Center(
        child: Container(
          height: 150,
        padding: const EdgeInsets.all(15),
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.lightBlue[100]),
        child: Column(
          children: [
            Text('Data yang telah di update', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 14,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                  child: Text('ID',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(width: 220, child: Text(': ${newPerson.ide}'))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                  child: Text('title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(width: 220, child: Text(': ${newPerson.title}'))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                  child: Text('body',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(width: 220, child: Text(': ${newPerson.body}'))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 50,
                  child: Text('userId',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(width: 220, child: Text(': ${newPerson.userId}'))
              ],
            )
          ],
        ),
          ),
      ),
    );
  }
}
