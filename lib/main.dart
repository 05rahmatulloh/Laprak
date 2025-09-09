import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Jangan pake `const` di sini supaya fleksibel
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kotak Icon',
      home: Scaffold(
        appBar: AppBar(title: Text('Kotak dengan Icon')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Baris pertama
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _iconBox(Icons.favorite, Colors.red, 'Love 1'),
                  SizedBox(width: 16),
                  _iconBox(Icons.favorite, Colors.pink, 'Love 2'),
                ],
              ),
              SizedBox(height: 16),
              // Baris kedua
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _iconBox(Icons.favorite, Colors.deepOrange, 'Love 3'),
                  SizedBox(width: 16),
                  _iconBox(Icons.favorite, Colors.purple, 'Love 4'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper untuk membuat kotak icon + teks
  Widget _iconBox(IconData icon, Color color, String label) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 40),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// import 'dart:io';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Row and Column',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Row and Column')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               KotakBiruJempol(),
//               SizedBox(width: 20),
//               KotakBiruJempol(),
//               SizedBox(width: 20),
//               KotakBiruJempol(),
//               SizedBox(width: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class KotakBiruJempol extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 100,
//       height: 100,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(color: Colors.black, width: 2),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Icon(Icons.thumb_up, color: Colors.white, size: 40),
//     );
//   }
// }
