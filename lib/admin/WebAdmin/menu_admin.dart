import 'package:flutter/material.dart';
import 'package:admin_ukm/admin/WebAdmin/login_admin.dart';
import 'package:admin_ukm/Core/CoreAdmin/container_home_adm.dart';

class MenuAdmin extends StatelessWidget {
  const MenuAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Admin'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => LoginAdmin())
                );
              }, 
              icon: Icon(Icons.logout),
              tooltip: 'Logout',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 100.0,
          right: 100.0,
          bottom: 24.0,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 1.1,
          ),
          itemCount: _getMenuData().length,
          itemBuilder: (context, index) {
            final menuData = _getMenuData()[index];
            return ContainerHomeAdm(
              title: menuData['title'],
              icon: menuData['icon'],
              counter: menuData['counter'],
              color: menuData['color'],
              onTap: () => _handleMenuTap(context, index),
            );
          },
        ),
      ),
    );
  }

  List<Map<String, dynamic>> _getMenuData() {
    return [
      {
        'title': 'Badminton',
        'counter': '8',
        'color': Colors.green,
        'icon': Icons.sports_tennis,
      },
      {
        'title': 'Basket',
        'counter': '3',
        'color': Colors.indigo,
        'icon': Icons.sports_basketball,
      },
      {
        'title': 'Dance',
        'counter': '7',
        'color': Colors.deepPurple,
        'icon': Icons.music_note,
      },
      {
        'title': 'Esport',
        'counter': '7',
        'color': Colors.purple,
        'icon': Icons.sports_esports,
      },
      {
        'title': 'Futsal',
        'counter': '16',
        'color': Colors.red,
        'icon': Icons.sports_soccer,
      },
      {
        'title': 'iCare',
        'counter': '4',
        'color': Colors.red[700]!,
        'icon': Icons.favorite,
      },
      {
        'title': 'MuayThai',
        'counter': '2',
        'color': Colors.red[600]!,
        'icon': Icons.sports_martial_arts,
      },
      {
        'title': 'Prodcine',
        'counter': '1',
        'color': Colors.orange,
        'icon': Icons.movie,
      },
      {
        'title': 'Taekwondo',
        'counter': '1',
        'color': Colors.orange[600]!,
        'icon': Icons.sports_kabaddi,
      },
      {
        'title': 'Talent',
        'counter': '3',
        'color': Colors.green[600]!,
        'icon': Icons.star,
      },
      {
        'title': 'Tartra',
        'counter': '3',
        'color': Colors.teal,
        'icon': Icons.theater_comedy,
      },
      {
        'title': 'Teater',
        'counter': '3',
        'color': Colors.deepOrange,
        'icon': Icons.masks,
      },
      {
        'title': 'The VOU',
        'counter': '3',
        'color': Colors.cyan,
        'icon': Icons.group,
      },
      {
        'title': 'Wushu',
        'counter': '3',
        'color': Colors.amber,
        'icon': Icons.self_improvement,
      },
    ];
  }

  void _handleMenuTap(BuildContext context, int index) {
    final menuData = _getMenuData()[index];
    String menuName = menuData['title'];
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$menuName dipilih'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}