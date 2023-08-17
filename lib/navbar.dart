import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hitung/Menu/Zakat.dart';
import 'package:hitung/Menu/home.dart';
import 'package:hitung/Menu/tentang.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
    //inisialisasi variabel
      int _currentIndex = 0;
      final List<Widget> _children = [
        //tambahkan kode sesuai nama class
        Home(),
        Zakat(),
        Tentang(),
      ];

      void onBarTapped(int index) {
        setState(() {
        _currentIndex = index;
        });
      }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: Icon(Icons.calculate),
        title: Text('Aplikasi Hitung Zakat'),
      ),
      body:_children[_currentIndex],
          //membuat bottom navigation
          bottomNavigationBar: BottomNavigationBar(
            //currentindex mengikuti baris item bottom navigasi yang diklik
            currentIndex: _currentIndex,
            //warna saat item diklik
            selectedItemColor: Colors.lightGreenAccent,
    
            //metode yang dijalankan saat ditap
            onTap: onBarTapped,
    
            //agar bottom navigation tidak bergerak saat diklik
            type: BottomNavigationBarType.fixed,
            //membuat item navigasi
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.redeem),
                label: 'Zakat'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'About'
              ),
            ],
    
          ),
      ),
    );

  }
}