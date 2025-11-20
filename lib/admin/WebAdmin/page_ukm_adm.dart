import 'package:flutter/material.dart';


class PageUkmAdm extends StatelessWidget {
  const PageUkmAdm({super.key, required this.namaUkm});

  final String namaUkm;

  // Data semua UKM dan anggota
  final List<Map<String, dynamic>> ukmList = const [
    {
      'nama': 'Badminton',
      'anggota': [
        {'nama': 'Udin', 'nim': 123, 'noTelp': 454, 'semester': 5},
        {'nama': 'Budi', 'nim': 124, 'noTelp': 455, 'semester': 3},
        {'nama': 'Aldi', 'nim': 128, 'noTelp': 459, 'semester': 4},
      ]
    },
    {
      'nama': 'Basket',
      'anggota': [
        {'nama': 'Siti', 'nim': 125, 'noTelp': 456, 'semester': 2},
        {'nama': 'Ayu', 'nim': 126, 'noTelp': 457, 'semester': 4},
      ]
    },
    {
      'nama': 'Dance',
      'anggota': [
        {'nama': 'Rina', 'nim': 127, 'noTelp': 458, 'semester': 1},
        {'nama': 'Rini', 'nim': 129, 'noTelp': 460, 'semester': 3},
      ]
    },
    {
      'nama': 'Esport',
      'anggota': [
        {'nama': 'Bobo', 'nim': 130, 'noTelp': 461, 'semester': 5},
      ]
    },
    {
      'nama': 'Futsal',
      'anggota': [
        {'nama': 'Tono', 'nim': 131, 'noTelp': 462, 'semester': 2},
        {'nama': 'Tini', 'nim': 132, 'noTelp': 463, 'semester': 3},
      ]
    },
  ];

  // Fungsi untuk mendapatkan data UKM berdasarkan nama
  Map<String, dynamic>? _getUkmData() {
    try {
      return ukmList.firstWhere(
        (ukm) => ukm['nama'].toString().toLowerCase() == namaUkm.toLowerCase(),
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ukmData = _getUkmData();

    if (ukmData == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('$namaUkm'),
        ),
        body: const Center(
          child: Text('Data UKM tidak ditemukan'),
        ),
      );
    }

    final anggota = ukmData['anggota'] as List<dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text('$namaUkm'),
      ),
      body: anggota.isEmpty
          ? const Center(
              child: Text('Belum ada anggota yang mendaftar.'),
            )
          : ListView.builder(
              itemCount: anggota.length,
              itemBuilder: (context, index) {
                final member = anggota[index] as Map<String, dynamic>;
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(member['nama'][0]),
                    ),
                    title: Text(member['nama']),
                    subtitle: Text(
                      'NIM: ${member['nim']} | Semester: ${member['semester']} | Telp: ${member['noTelp']}',
                    ),
                  ),
                );
              },
            ),
    );
  }
}