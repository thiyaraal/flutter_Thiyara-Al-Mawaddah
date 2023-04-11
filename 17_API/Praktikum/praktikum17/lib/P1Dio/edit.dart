import 'package:flutter/material.dart';
import 'person.dart';
import 'person_card.dart';
import 'services.dart';
class EditContact extends StatefulWidget {
  EditContact({Key? key}) : super(key: key);

  @override
  State<EditContact> createState() => _EditContactState();
}

class _EditContactState extends State<EditContact> {
    Person? person;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('edit')),
      body: Center(
        child: 
        Padding(padding: EdgeInsets.all(20),child: 
        Container(
      padding: const EdgeInsets.all(15),
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.lightBlue[100]),
      child: Column(
        children: [
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
              SizedBox(width: 220, child: Text(': ${person?.id}'))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${person?.name}'))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${person?.phone}'))
            ],
          )
        ],
      ),
    )),
      ),
    );
  }
}
