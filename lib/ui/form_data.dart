import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor:
            const Color.fromARGB(255, 185, 169, 164), // Warna coklat gelap
      ),
      body: Center(
        child: Container(
          width: 300, // Lebar Container yang lebih kecil
          height: 300,
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
            children: [
              _textboxNama(),
              _textboxNIM(),
              _textboxTahun(),
              const SizedBox(height: 20), // Spasi antara textfield dan tombol
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama",
        labelStyle: TextStyle(color: Colors.brown[700]), // Warna label coklat
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.brown), // Garis bawah coklat
        ),
      ),
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: InputDecoration(
        labelText: "NIM",
        labelStyle: TextStyle(color: Colors.brown[700]),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.brown),
        ),
      ),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: TextStyle(color: Colors.brown[700]),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.brown),
        ),
      ),
      controller: _tahunController,
    );
  }

  _tombolSimpan() {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.brown, // Warna coklat tombol
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun)));
        },
        child: const Text(
          'Simpan',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
