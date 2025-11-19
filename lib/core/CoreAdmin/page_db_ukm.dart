import 'package:flutter/material.dart';

class DbUkm extends StatelessWidget {
  const DbUkm({
    super.key,
    required this.nama,
    required this.nim,
    required this.noTelp,
    required this.semester,

  });

  final String nama;
  final int nim;
  final int noTelp;
  final int semester;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      crossAxisAlignment: .center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        )
      ],
    );
  }
}