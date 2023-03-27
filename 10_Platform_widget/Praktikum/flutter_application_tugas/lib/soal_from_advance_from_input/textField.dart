import 'package:flutter/material.dart';

class TeksField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  const TeksField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                  color: Color.fromRGBO(231, 224, 236, 1),
                  child: TextFormField(
                    // validator: (value) {
                    //     if (value == null) {
                    //       return 'Nomor telepon harus diisi';
                    //     }
                    //     if (value.length < 7 || value.length > 15) {
                    //       return 'Panjang minimal 8 digit dan maksimal 15 digit';
                    //     }
                    //     if (value[0] != '0') {
                    //       return 'Nomor telepon harus mulai dari angka 0';
                    //     }
                    //     return null;
                    //   },
                    controller: controller,
                    // maxLength: 20,
                    decoration:  InputDecoration(
                      hintText: hintText,
                      labelText: labelText,
                      contentPadding:
                          EdgeInsets.only(top: 10, right: 10, left: 10),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      fillColor: Colors.amber,
                      
                    

                    ),
                  ),
                );
  }
}