import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor: const Color.fromARGB(255, 185, 169, 164),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.brown[50], // Warna latar belakang krem
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Shadow posisi
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize
                    .min, // Pastikan Column tidak lebih besar dari kontennya
                children: [
                  Text(
                    "Nama saya $nama",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.brown[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "NIM: $nim",
                    style: TextStyle(fontSize: 18, color: Colors.brown[600]),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Umur saya adalah $umur tahun",
                    style: TextStyle(fontSize: 18, color: Colors.brown[600]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
