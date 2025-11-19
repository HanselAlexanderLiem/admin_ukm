import 'package:flutter/material.dart';
import 'package:admin_ukm/Core/CoreAdmin/page_db_ukm.dart';


class PageUkmAdm extends StatelessWidget {
  const PageUkmAdm({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MenuData['nama'],
      ),
    );
  }
  List<Map<String, dynamic>> MenuData() {
    return [
      {
        'nama':'udin',
        'nim':123,
        'noTelp':454,
        'semester':5,
      }
      
    ];
  }
  
  void _index(BuildContext context, int index){
    final listItem=_getMenuData()[index];
  }

}