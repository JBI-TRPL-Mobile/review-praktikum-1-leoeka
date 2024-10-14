import 'package:flutter/material.dart';

class DetailBukuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> buku =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Buku - ${buku['judul']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Agar bisa scroll jika konten melebihi layar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Mengatur ukuran gambar dengan width dan height
              Image.network(
                buku['gambar']!,
                width: double.infinity, // Menggunakan lebar penuh
                height: 250, // Atur tinggi sesuai keinginan
                fit: BoxFit.cover, // Mengatur agar gambar mengisi area
              ),
              SizedBox(height: 10),
              Text(
                'Judul: ${buku['judul']}',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Penulis: ${buku['penulis']}',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(height: 10),
              Text(
                'Deskripsi:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(buku['deskripsi']!),
            ],
          ),
        ),
      ),
    );
  }
}
