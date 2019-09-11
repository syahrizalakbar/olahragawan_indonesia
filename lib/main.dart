import 'package:flutter/material.dart';
import 'package:olahragawan_indonesia/component/SimpleGrid.dart';
import 'package:olahragawan_indonesia/pages/OlahragawanDetail.dart';

import 'model/Olahragawan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Olahragawan Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OlahragawanIndonesia(),
    );
  }
}

class OlahragawanIndonesia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Olahragawan Indonesia')),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: SimpleGrid(
            context, 
            Olahragawan.getListOlahragawan(),
            route : (BuildContext context, String foto, String nama, String deskripsi) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OlahragawanDetail(foto, nama, deskripsi);
                }));
            }
          ),
        ),
      ),
    );
  }
}
