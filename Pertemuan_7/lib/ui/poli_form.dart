import 'package:flutter/material.dart';
import '../model/poli.dart';
import '../ui/poli_detail.dart';
import './poli_page.dart';

class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);
  _poliFormState createState() => _poliFormState();
}

class _poliFormState extends State<PoliForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [_fieldNamaPoli(), SizedBox(height: 20), _tombolSimpan()],
          ),
        ),
      ),
    );
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          if (_namaPoliCtrl.text.isNotEmpty) {
            Poli poli = new Poli(namaPoli: _namaPoliCtrl.text);
            daftarPoli.add(poli);
            _namaPoliCtrl.clear();
          }
          // if (_formKey.currentState!.validate()) {
          //   final nama = _namaPoliCtrl.text;
          //   print('nama : $nama');
          // }
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => PoliPage()));
          Navigator.pop(context);
        },
        child: const Text("Simpan"));
  }
}
