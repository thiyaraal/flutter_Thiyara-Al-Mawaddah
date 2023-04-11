import 'dart:convert';

import 'package:dio/dio.dart';

class ImageService {
  Future<String> generateImage( String name)async{
    final response = await Dio().get('https://api.dicebear.com/6.x/pixel-art/svg?seed=$name');
    print(response.data.toString());
    return response.data.toString();
  }
}