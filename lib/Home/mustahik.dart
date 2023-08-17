import 'package:flutter/material.dart';

class Mustahik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Mustahik Zakat'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 600,
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
                "Ada 8 golongan yang berhak menerima zakat (mustahik) yakni:\n\nإِنَّمَا الصَّدَقَاتُ لِلْفُقَرَاء وَالْمَسَاكِينِ وَالْعَامِلِينَ عَلَيْهَا وَالْمُؤَلَّفَةِ قُلُوبُهُمْ وَفِي الرِّقَابِ وَالْغَارِمِينَ وَفِي سَبِيلِ اللّهِ وَابْنِ السَّبِيلِ فَرِيضَةً مِّنَ اللّهِ وَاللّهُ عَلِيمٌ حَكِيمٌ \n\nArtinya: Sesungguhnya zakat-zakat itu, hanyalah untuk orang-orang fakir, orang-orang miskin, pengurus-pengurus zakat, para mu’allaf yang dibujuk hatinya, untuk (memerdekakan) budak, orang-orang yang berhutang, untuk jalan Allah dan untuk mereka yang sedang dalam perjalanan, sebagai suatu ketetapan yang diwajibkan Allah, dan Allah Maha Mengetahui lagi Maha Bijaksana (QS At Taubah: 60).\nDari ayat di atas, 8 golongan tersebut adalah: \n1. Orang fakir: orang yang amat sengsara hidupnya, tidak mempunyai harta dan tenaga untuk memenuhi penghidupannya. \n2. Orang miskin: orang yang tidak cukup penghidupannya dan dalam keadaan kekurangan. \n3. Pengurus zakat: orang yang diberi tugas untuk mengumpilkan dan membagikan zakat.\n4. Muallaf: orang kafir yang ada harapan masuk Islam dan orang yang baru masuk Islam yang imannya masih lemah. \n5. Memerdekakan budak: mencakup juga untuk melepaskan Muslim yang ditawan oleh orang-orang kafir.\n6. Orang yang berhutang: orang yang berhutang karena untuk kepentingan yang bukan maksiat dan tidak sanggup membayarnya. Adapun orang yang berhutang untuk memelihara persatuan umat Islam dibayar hutangnya itu dengan zakat, walaupun ia mampu membayarnya.\n7. Orang yang berjuang di jalan Allah (sabilillah): yaitu untuk keperluan pertahanan Islam dan kaum muslimin. Di antara mufassirin ada yang berpendapat bahwa fi sabilillah itu mencakup juga kepentingan-kepentingan umum seperti mendirikan sekolah, rumah sakit dan lain-lain. \n8. Orang yang sedang dalam perjalanan (ibnu sabil) yang bukan maksiat mengalami kesengsaraan dalam perjalanannya.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
             ),
           )
                
            ],
          ),
        ),
      ),
    );
  }
}
