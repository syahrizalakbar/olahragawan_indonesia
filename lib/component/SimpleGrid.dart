import 'package:flutter/material.dart';
import 'package:olahragawan_indonesia/model/Olahragawan.dart';

class SimpleGrid extends StatelessWidget {
  final List<Olahragawan> data;      
  final Function route;
  final BuildContext context;

  SimpleGrid(this.context, this.data, {this.route});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int i) {
        return GridTile(
          child: InkWell(
            child: Image.network(
              data[i].foto,
              fit: BoxFit.fill,
            ),
            onTap: () {
              route(this.context, data[i].foto, data[i].nama, data[i].deskripsi);
            },
          )
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}