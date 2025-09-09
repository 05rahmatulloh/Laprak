import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Column and Row")),
        body: Center(
          child: Row(
            children: [
              Column(
                children: [
                  kotak(warna: Colors.black,),
                  SizedBox(width: 20),
                  kotak(warna: Colors.blue,),
                  SizedBox(width: 20),
                 
                ],
                
              ),
              Column(
                children: [
                   kotak(warna: Colors.green),
                  SizedBox(width: 20),
                   kotak(warna: const Color.fromARGB(255, 138, 139, 138)),
                  SizedBox(width: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class kotak extends StatelessWidget {
   Color warna;
  //  kotak({super.key ,required Color warna});

  // Perbaiki deklarasi konstruktor dan field
  kotak({super.key, required this.warna});

  // Ubah warna kotak sesuai parameter


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,

      decoration: BoxDecoration(
        color: warna,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(Icons.thumb_up, color: Colors.white, size: 40),
    );
  }
}
