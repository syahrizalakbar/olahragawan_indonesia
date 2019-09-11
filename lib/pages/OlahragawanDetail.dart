import 'package:flutter/material.dart';

class OlahragawanDetail extends StatelessWidget {
  final String foto, nama, deskripsi;

  OlahragawanDetail(this.foto, this.nama, this.deskripsi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.nama)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Image.network(this.foto),
              SizedBox(height: 16.0,),
              Text(this.deskripsi)
            ],
          ),
        ),
      ),
    );
  }
}