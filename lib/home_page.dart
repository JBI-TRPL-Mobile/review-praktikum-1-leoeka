import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> bukuList = [
    {
      'judul': 'Strategi Belajar Mengajar: Untuk Menjadi Guru yang Profesional',
      'penulis': 'Rahman Johar, Latifah Hanum',
      'deskripsi': 'Strategi belajar mengajar sangat penting dipelajari agar pembelajaran menjadi menarik dan tidak membosankan.'
          'Buku ini di kemas secara menarik dengan berbagai macam metode mengajar.'
          'Bukan hanya itu, buku ini juga menjelaskan secara rinci tentang model, strategi, pendekatan, dan teknik pembelajaran.'
          'Dikupas juga tentang keberhasilan belajar mengajar sangat ditentukan bagaimana mampu menghandel kelas. '
          'Bagaimana pengelolaan kelas yang baik dengan menentukan salah satu model tatanan ruang kelas.'
          'Diharapkan buku ini dapat membantu permasalahan yang dihadapi oleh calon guru maupun tenaga pengajar lainnya dalam situasi tersebut.',
      'gambar': 'https://ebooks.gramedia.com/ebook-covers/63836/image_highres/BLK_SBMUMGYP202181137.jpg'
    },
    {
      'judul': 'Kesehatan dan Keselamatan Kerja Lindung Lingkungan',
      'penulis': 'Ruliyanto, S.T., M.T., Ph.D., IP.',
      'deskripsi': 'Dalam menjalankan kegiatan operasional, perusahaan tidak hanya dituntut untuk mencapai hasil produksi yang optimal, tetapi juga bertanggung jawab terhadap kesehatan, keselamatan, dan keberlanjutan lingkungan. Kesehatan, Keselamatan Kerja, dan Lingkungan (K3LL) adalah pendekatan holistik yang menjembatani antara produktivitas dengan kepedulian terhadap pekerja, masyarakat, dan lingkungan.'
          'Dalam pengantar ini, kita telah memahami definisi dan tujuan mendasar dari K3LL yang membentuk dasar bagi pembentukan budaya kerja yang aman, sehat, dan bertanggung jawab.',
      'gambar': 'https://ebooks.gramedia.com/ebook-covers/96233/image_highres/BLK_KDKKLL1728637257742.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Tipe Buku', style: TextStyle(color: Colors.white, fontSize: 24)),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Pendidikan'),
              onTap: () {
                // Tindakan yang diinginkan saat "Pendidikan" dipilih
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Kesehatan'),
              onTap: () {
                // Tindakan yang diinginkan saat "Kesehatan" dipilih
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Lingkungan'),
              onTap: () {
                // Tindakan yang diinginkan saat "Lingkungan" dipilih
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              padding: EdgeInsets.all(10),
              itemCount: bukuList.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                          child: Image.network(
                            bukuList[index]['gambar']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          bukuList[index]['judul']!,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Penulis: ${bukuList[index]['penulis']}',
                          style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                        ),
                      ),
                      ButtonBar(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: bukuList[index],
                              );
                            },
                            child: Text('Detail'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tentang');
              },
              child: Text('Tentang Aplikasi'),
            ),
          ),
        ],
      ),
    );
  }
}
