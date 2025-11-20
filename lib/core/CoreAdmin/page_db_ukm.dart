import 'package:flutter/material.dart';

class DbUkm extends StatelessWidget {
  const DbUkm({
    super.key,
    required this.namaUkm,
    required this.anggota,
  });

  final String namaUkm;
  final List<Map<String, dynamic>> anggota;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anggota $namaUkm'),
      ),
      body: anggota.isEmpty
          ? const Center(child: Text('Belum ada anggota yang mendaftar.'))
          : ListView.builder(
              itemCount: anggota.length,
              itemBuilder: (context, index) {
                final member = anggota[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(child: Text(member['nama'][0])),
                    title: Text(member['nama']),
                    subtitle: Text('NIM: ${member['nim']} | Semester: ${member['semester']} | Telp: ${member['noTelp']}'),
                  ),
                );
              },
            ),
    );
  }
}