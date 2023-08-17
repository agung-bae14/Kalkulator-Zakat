import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Fitrah extends StatefulWidget {
  const Fitrah({super.key});

  @override
  State<Fitrah> createState() => _FitrahState();
}

class _FitrahState extends State<Fitrah> {
  TextEditingController jumlah = TextEditingController();
  TextEditingController harga = TextEditingController();
  double? uang=0,num=0,num2=0,beras=0, kadar=2.5;

  hitung(){
    setState(() {
      num = double.parse(jumlah.text);
      num2 = double.parse(harga.text);
      uang = kadar! * num! * num2!;
      beras = kadar! * num!;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Zakat Fitrah'),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
               children: [
                const SizedBox(width: 10),
                Text("Jumlah Orang", style: TextStyle (fontWeight: FontWeight.bold) ),
               ]
              ),
             Padding(
             padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLength: 10,
                controller: jumlah,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                ),
              ),
             ),
              Row(
               children: [
                const SizedBox(width: 10),
                Text("Harga Beras per Kg",style: TextStyle (fontWeight: FontWeight.bold) ),
               ]
              ),
             Padding(
             padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLength: 10,
                controller: harga,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                ),
              ),
             ),
             Row(
              children: [
                ElevatedButton(
               onPressed: () {
                hitung();
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context)=> AlertDialog(
                    title: const Text('Hasil perhitungan Zakat Fitrah :'),
                    content: SizedBox(
                      height: 150,
                      child:
                      Text('Bila zakat dengan uang maka dibayarkan sebesar Rp.$uang \n\nBila zakat dengan beras maka dibayarkan seberat $beras kg')
                    ),
                    actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context, 'OK');
                      },
                      child: const Text('OK'),
                      )
                    ],
                  )
                );
               },
               child: Text('Hitung',
                 style: TextStyle(
                     fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                ),
               ),
               const SizedBox(width: 10),
               ElevatedButton(
               onPressed: () {
                jumlah.clear();
                harga.clear();
               },
               child: Text('Hapus',
                 style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                ),
               ),
              const SizedBox(width: 10),
               ElevatedButton(
               onPressed: () {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context)=> AlertDialog(
                    title: const Text('Info :'),
                    content: SizedBox(
                      height: 150,
                      width: 800,
                      child:
                      Table(
                        border: TableBorder.all(),
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                child: Text(
                                  'Kadar Zakat Fitrah',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Text(
                                  'Berdasarkan makanan pokok di Indonesia beras',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '2.5 Kg',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                     ),
                    actions: [
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context, 'OK');
                      },
                      child: const Text('OK'),
                      )
                    ],
                  )
                );
               },
               child: Text('Info',
                 style: TextStyle(
                     fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                ),
               ),
              ],
             ),
            ]
          ),
        ),
      ),
    );
  }
}