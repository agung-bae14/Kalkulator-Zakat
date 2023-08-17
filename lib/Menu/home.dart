import 'package:flutter/material.dart';
import 'package:hitung/Home/mustahik.dart';
import 'package:hitung/Home/syarat.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: SingleChildScrollView(
         child: Column(
          children: [
            SizedBox(height: 10),
         Container(
          width: 360,
          height: 200,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
           Expanded(
             child: SingleChildScrollView(
              child: Text(
                "Telah dimaklumi bersama bahwa zakat merupakan salah satu dari rukun Islam sebagaimana yang ditegaskan oleh baginda Nabi Muhammad shallallahu ‘alaihi wasallam dalam sebuah hadits: \n\nبُنِيَ الإِسْلامُ على خَمْسٍ: شَهادَةِ أَنْ لَا إِلهَ إِلاَّ اللهُ، وأنَّ مُحَمَّداً رَسُولُ اللهِ، وَإقَامِ الصَّلاةِ، وَإيْتَاءِ الزَّكاةِ، وَالحَجِّ، وَصَوْمِ رَمَضَانَ متفق عليه \n“Islam dibangun di atas lima hal: kesaksian sesungguhnya tiada Tuhan selain Allah dan sesungguhnya Muhammad utusan Allah, melaksanakan shalat, membayar zakat, haji, dan puasa Ramadhan.” (HR Bukhari Muslim)",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
             ),
           ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: 360,
          height: 200,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
           Expanded(
             child: SingleChildScrollView(
              child: Text(
                "Dalam kitab tersebut ditegaskan bahwa syarat wajib zakat ada lima :\n1. Islam\n2. Merdeka\n3.Kepemilikan harta berstatus tertentu\n4. Kepemilikannya sempurna\n5. Sang pemilik wujud secara yakin.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
             ),
           ),
           Row( children: [
            ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Syarat()));
              }, child: Text('Selengkapnya'))
           ],
           ), 
            ],
          ),
        ),
        SizedBox(height: 10),
         Container(
          width: 360,
          height: 200,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
           Expanded(
             child: SingleChildScrollView(
              child: Text(
                "Ada 8 golongan yang berhak menerima zakat (mustahik) yakni:\n1. Orang fakir\n2. Orang miskin\n3. Pengurus zakat\n4. Muallaf\n5. Memerdekakan budak\n6. Orang yang berhutang\n7. Orang yang berjuang di jalan Allah (sabilillah)\n8. Orang yang sedang dalam perjalanan (ibnu sabil)",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
             ),
           ),
           SizedBox(height: 10),
           Row( children: [
            ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mustahik()));
              }, child: Text('Selengkapnya'))
           ],
           ),
            ],
          ),
        ),
        ],
      ),
      ),
      ),
    );
  }
}
