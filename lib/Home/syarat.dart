import 'package:flutter/material.dart';

class Syarat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Syarat Wajib Zakat'),
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
                "Dalam kitab tersebut ditegaskan bahwa syarat wajib zakat ada lima. \n 1. Islam. Maka zakat tidak wajib bagi orang kafir sejak lahir. Walaupun demikian, akan tetapi orang kafir kelak di akhirat tetap diberi siksaan sebab tidak membayar zakat. (Lihat Habib Muhammad bin Ahmad bin Umar asy-Syathiri, Syarh al-Yaqut an-Nafis, Beirut, Dar al-Minhaj, cetakan ketiga, tahun 2011, halaman 259). \n Sedangkan untuk orang murtad, status hartanya ditangguhkan hingga ia kembali Islam. Jika sampai meninggal dunia tidak kembali Islam, maka status hartanya adalah harta fai’ (harta yang diperoleh pemerintah Muslim dari orang kafir bukan melalui peperangan) dan jelaslah bahwa sebenarnya kepemilikannya telah hilang sejak ia murtad. Jika kembali Islam, maka dia dituntut untuk mengeluarkan (melunasi utang) zakat selama masa murtadnya. (Habib Hasan bin Ahmad al-Kaaf, Taqrirat as-Sadidah, Yaman, Dar al-Mirats an-Nabawi, cetakan pertama, 2013, halaman 397)\n 2. Merdeka. Zakat tidak wajib bagi budak. Adapun budak Muba’ad (sebagian dirinya berstatus merdeka dan sebagian yang lain berstatus budak), maka wajib mengeluarkan zakat dari harta yang ia miliki dengan status merdeka yang terdapat pada dirinya. (Habib Hasan bin Ahmad al-Kaaf, Taqrirat as-Sadidah, Yaman, Dar al-Mirats an-Nabawi, cetakan pertama, 2013, halaman 397)\n 3. Kepemilikan harta berstatus tertentu. Tidak wajib mengeluarkan zakat dari harta yang diwakafkan kepada jihah ammah seperti diwakafkan pada para faqir miskin. Sedangkan harta yang diwakafkan kepada orang tertentu seperti pohon kurma yang diwakafkan kepada Zaid, maka hasilnya harus dizakati  jika mencapai satu nishab. (Habib Hasan bin Ahmad al-Kaaf, Taqrirat as-Sadidah, Yaman, Dar al-Mirats an-Nabawi, cetakan pertama, 2013, halaman 397)\n 4. Kepemilikannya sempurna. Maksudnya dimiliki dengan sempurna. Maka zakat tidak wajib bagi budak mukattab (budak yang mencicil kepada majikannya agar bebas dari status budak) karena status kepemilikannya lemah. \n 5. Sang pemilik wujud secara yakin. artinya, zakat tidak wajib dikeluarkan dari harta yang diwakafkan kepada janin yang masih berada dalam kandungan karena tidak diyakini wujudnya/hidupnya. (Habib Hasan bin Ahmad al-Kaaf, Taqrirat as-Sadidah, Yaman, Dar al-Mirats an-Nabawi,cetakan pertama, 2013, halaman 397) Itulah lima kriteria yang menyebabkan seseorang wajib membayar zakat. \n Sedangkan baligh dan berakal bukanlah termasuk dari syarat wajib zakat. Sehingga, hartanya anak kecil atau orang gila yang sudah mencapai nishab wajib dizakati. Adapun yang mengeluarkan zakat dari harta keduanya adalah walinya. (Habib Hasan bin Ahmad al-Kaaf, Taqrirat as-Sadidah, Yaman, Dar al-Mirats an-Nabawi, cetakan pertama, 2013, halaman 397)",
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
