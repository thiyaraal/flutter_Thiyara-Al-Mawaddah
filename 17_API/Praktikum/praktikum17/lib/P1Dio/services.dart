import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'person.dart';

abstract class Services {
  static Future<Person?> getById(int id) async {
    try {
      var response = await Dio().get(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/1');
      if (response.statusCode == 200) {
        return Person(
            id: response.data['id'],
            name: response.data['name'],
            phone: response.data['phone']);
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

//// post
  static Future<Person?> createUser(
      BuildContext context, int id, String name, String phone) async {
    try {
      var response = await Dio().post(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
          data: {'name': name, 'phone': phone, "id": id});
      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Create Contact Berhasil',
            ),
          ),
        );
        return Person(
            id: response.data['id'],
            name: response.data['name'],
            phone: response.data['phone']);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  ////// update data
  static Future<Person?> editUser1(
      BuildContext context, int id, String name, String phone) async {
    try {
      var response = await Dio().put(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
          data: {'name': name, 'phone': phone, "id": id});
      // print(response.statusCode);
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Update Contact Berhasil',
            ),
          ),
        );
        return Person(
            id: response.data['id'],
            name: response.data['name'],
            phone: response.data['phone']);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static Future<NewPerson?> editAgian(BuildContext context, int ide,
      String title, String body, int userId) async {
    try {
      var response = await Dio().put(
          'https://jsonplaceholder.typicode.com/posts/1',
          data: {'id': ide, 'title': title, 'body': body, "userId": userId});
      if (response.statusCode == 200) {
        print('berhasil');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Update Contact Berhasil',
            ),
          ),
        );
        return NewPerson(
            ide: response.data['id'],
            title: response.data['title'],
            body: response.data['body'],
            userId: response.data['userId']);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
