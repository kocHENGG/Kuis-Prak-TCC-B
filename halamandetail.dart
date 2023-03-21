import 'package:flutter/material.dart';
import 'package:kuis_b_123200005/data_buku.dart';
import 'package:kuis_b_123200005/halamankosong.dart';

class HalamanDetail extends StatelessWidget {
  final DataBuku place;
  const HalamanDetail({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(place.imageLink),
              ],
            ),
          ),
          Text(place.title),
          Text(place.author),
          Text(place.language),
          Text(place.country),
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          MaterialButton(
            onPressed: () {},
            child: Text('Pinjam Buku'),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
