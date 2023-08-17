import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pertanian extends StatefulWidget {
  const pertanian({super.key});

  @override
  State<pertanian> createState() => _pertanianState();
}

class _pertanianState extends State<pertanian> {
  TextEditingController nilai = TextEditingController();
  int? _selectedValue;
  int? _airValue;
  double? zakat=0,num1=0;

hujan(){
setState(() {
num1 = double.parse(nilai.text);
zakat = 10 / 100 * num1!;
});
}

bayar(){
setState(() {
num1 = double.parse(nilai.text);
zakat = 5 / 100 * num1!;
});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Zakat Pertanian'),
      ),
      body: Form(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
               children: [
                const SizedBox(width: 10),
                Text("Jenis Tanaman", style: TextStyle (fontWeight: FontWeight.bold) ),
               ]
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                  Text('Beras Putih'),
                  ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                  Text('Kacang Hijau'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 3,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                  Text('Kacang Tunggak'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 4,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                  Text('Padi'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 5,
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                  ),
                  Text('Padi Kretek'),
                ],
              ),
              Row(
               children: [
                const SizedBox(width: 10),
                Text("Pengairan Tanaman", style: TextStyle (fontWeight: FontWeight.bold) ),
               ]
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _airValue,
                    onChanged: (value) {
                      setState(() {
                        _airValue = value;
                      });
                    },
                  ),
                  Text('Berbayar'),
                  Radio(
                    value: 2,
                    groupValue: _airValue,
                    onChanged: (value) {
                      setState(() {
                        _airValue = value;
                      });
                    },
                  ),
                  Text('Tadah hujan'),
                  ],
              ),
              SizedBox(height: 10),
              Row(
               children: [
                const SizedBox(width: 10),
                Text("Hasil Panen per Kg",style: TextStyle (fontWeight: FontWeight.bold) ),
               ]
              ),
             Padding(
             padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                maxLength: 10,
                controller: nilai,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                ),
              ),
             ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      String resultText = '';
                      double? nisab = double.tryParse(nilai.text);
                      if (_selectedValue == 1) {
                        if (nisab != null && nisab >= 815.758){
                          if (_airValue == 1){
                            bayar();
                          }else if(_airValue == 2){
                            hujan();
                          }
                        }else{
                          zakat = 0;
                        }
                      } else if (_selectedValue == 2) {
                        if (nisab != null && nisab >= 780.036){
                          if (_airValue == 1){
                            bayar();
                          }else if(_airValue == 2){
                            hujan();
                          }
                        }else{
                          zakat = 0;
                        }
                      } else if (_selectedValue == 3) {
                        if (nisab != null && nisab >= 756.697){
                          if (_airValue == 1){
                            bayar();
                          }else if(_airValue == 2){
                            hujan();
                          }
                        }else{
                          zakat = 0;
                        }
                      } else if (_selectedValue == 4) {
                        if (nisab != null && nisab >= 1631.516){
                          if (_airValue == 1){
                            bayar();
                          }else if(_airValue == 2){
                            hujan();
                          }
                        }else{
                          zakat = 0;
                        }
                      } else if (_selectedValue == 5) {
                        if (nisab != null && nisab >= 1323.132){
                          if (_airValue == 1){
                            bayar();
                          }else if(_airValue == 2){
                            hujan();
                          }
                        }else{
                          zakat = 0;
                        }
                      }
                      showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text('Hasil'),
                                        content: Text('Zakat yang harus dibayarkan sebesar $zakat Kg'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Tutup'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Text('Tampilkan Hasil'),
                              ),
                    const SizedBox(width: 10),
                  ElevatedButton(
               onPressed: () {
                nilai.clear();
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
                                  'Nishab Zakat Pertanian',
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
                                  'Beras Putih',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '815.758 Kg',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Text(
                                  'Kacang Hijau',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '780.036 Kg',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Text(
                                  'Kacang Tunggak',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '756.697 Kg',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Text(
                                  'Padi',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '1631.516 Kg',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableCell(
                                child: Text(
                                  'Padi Kretek',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '1323.132 Kg',
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
            )
            ],
          ),
      ),
      ),
    );
  }
}