import 'package:flutter/material.dart';
import 'package:admin_ukm/admin/WebAdmin/login_admin.dart';

class DropdownMenuCustom extends StatefulWidget {
  const DropdownMenuCustom({super.key});

  @override
  State<DropdownMenuCustom> createState() => _DropdownMenuCustomState();
}

class _DropdownMenuCustomState extends State<DropdownMenuCustom> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(Icons.menu, color: Colors.black),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: [
              Icon(Icons.add, size: 20),
              SizedBox(width: 10),
              Text('Add UKM'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            children: [
              Icon(Icons.settings, size: 20),
              SizedBox(width: 10),
              Text('Settings'),
            ],
          ),
        ),
        PopupMenuDivider(),
        PopupMenuItem(
          value: 3,
          child: Row(
            children: [
              Icon(Icons.logout, size: 20, color: Colors.red),
              SizedBox(width: 10),
              Text('Logout', style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        if (value == 1) {
          // Navigate to Add UKM
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Add UKM page',), duration: Duration(seconds: 1),),
          );
        } else if (value == 2) {
          // Navigate to Settings
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Settings page'), duration: Duration(seconds: 1),),
          );
        } else if (value == 3) {
          // Perform Logout
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginAdmin()),
          );
        }
      },
    );
  }
}