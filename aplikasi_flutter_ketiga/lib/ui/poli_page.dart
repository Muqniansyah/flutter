// import flutter
import 'package:flutter/material.dart';
// import
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    // widget Scaffold
    return Scaffold(
      appBar: AppBar(title: const Text("Data Poli")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = new Poli(namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Kandungan"),
              ),
            ),
            onTap: () {
              Poli poliKandungan = new Poli(namaPoli: "Poli Kandungan");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliKandungan)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Gigi"),
              ),
            ),
            onTap: () {
              Poli poliGigi = new Poli(namaPoli: "Poli Gigi");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliGigi)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Tht"),
              ),
            ),
            onTap: () {
              Poli poliTht = new Poli(namaPoli: "Poli Tht");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliTht)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Mata"),
              ),
            ),
            onTap: () {
              Poli poliMata = new Poli(namaPoli: "Poli Mata");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliMata)));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Penyakit Dalam"),
              ),
            ),
            onTap: () {
              Poli poliPenyakitDalam =
                  new Poli(namaPoli: "Poli Penyakit Dalam");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PoliDetail(poli: poliPenyakitDalam)));
            },
          ),
        ],
      ),
    );
  }
}
