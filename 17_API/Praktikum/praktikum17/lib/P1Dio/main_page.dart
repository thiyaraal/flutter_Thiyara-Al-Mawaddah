import 'package:flutter/material.dart';
import 'package:praktikum17/P1Dio/edit.dart';
import 'package:praktikum17/P1Dio/newPerson.dart';

import 'person.dart';
import 'person_card.dart';
import 'services.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Person? person;
  NewPerson? newPerson;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dio Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              person != null
                  ? PersonCard(person: person!)
                  : const Text('klik button dibawah'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () async {
                      Person? result = await Services.getById(1);

                      if (result != null) {
                        setState(() {
                          person = result;
                        });
                      }
                    },
                    child: const Text('GET')),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100,
                child: ElevatedButton(
                    onPressed: () async {
                      Person? result = await Services.createUser(
                          context, 4, 'thiyara', '0812345678');
                      if (result != null) {
                        setState(() {
                          person = result;
                        });
                      }
                    },
                    child: const Text('POST')),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () async {
                        NewPerson? result = await Services.editAgian(
                            context, 1, "foo", "bar", 1);
                        if (result != null) {
                          setState(() {
                            Navigator.of(context).push(
                                new MaterialPageRoute(
                                    builder: (BuildContext context) {
                              return new NewPersonCard(
                                newPerson: result,
                              );
                            }));
                          });
                        }
                      },
                      child: Text('put'))),
            ],
          ),
        ));
  }
}
