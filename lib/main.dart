import 'package:admin_ukm/admin/WebAdmin/login_admin.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginAdmin(),
    );
  }
}