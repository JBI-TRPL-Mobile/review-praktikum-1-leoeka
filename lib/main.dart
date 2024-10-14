import 'package:flutter/material.dart';
import 'package:template_project/detail_buku_page.dart';
import 'package:template_project/home_page.dart';

import 'package:template_project/tentang_aplikasi_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Buku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailBukuPage(),
        '/tentang': (context) => TentangAplikasiPage(),
      },
    );
  }
}
