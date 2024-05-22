import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar mahasiswa dengan nama dan NIM
    final List<Map<String, String>> students = [
      {'name': 'Latif Kamaludin', 'nim': 'STI202102264'},
      {'name': 'Septaheksa Panggih Ardiansah', 'nim': 'STI202102266'},
      {'name': 'Bangun Utomo Putra', 'nim': 'STI202102269'}, // Yang di tengah
      {'name': 'Yoga Surya Pratama', 'nim': 'STI202102270'},
      {'name': 'Ajeng Dwi Febriana', 'nim': 'STI202102273'},
    ];

    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Mahasiswa'),
          backgroundColor: Colors.orange,
        ),
        body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            // Cek jika nama mahasiswa adalah yang di tengah
            bool isMiddle = index == students.length ~/ 2;
            return Container(
              color: isMiddle ? Colors.green : Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    students[index]['name']!,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    students[index]['nim']!,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
