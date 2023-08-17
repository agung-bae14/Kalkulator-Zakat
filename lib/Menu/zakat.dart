import 'package:flutter/material.dart';
import 'package:hitung/Zakat/fitrah.dart';
import 'package:hitung/Zakat/pertanian.dart';

class Zakat extends StatelessWidget {
  const Zakat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Fitrah()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(Icons.groups, size: 70, color: Colors.green),
                    Text("Zakat Fitrah", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const pertanian()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/images/tani.png', height: 50, width: 50,),
                    Text("Zakat pertanian", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
          
    );
  }
}