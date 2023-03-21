import 'package:flutter/material.dart';
import 'package:kuis_b_123200005/data_buku.dart';
import 'package:kuis_b_123200005/halamandetail.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Buku'),
      ),
      body: ListView.builder(
          itemCount: listBuku.length,
          itemBuilder: (context, index) {
            final DataBuku place = listBuku[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HalamanDetail(
                      place: place,
                    ),
                  ),
                );
              },
              child: Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: 100.0,
                      child: Image.network(place.imageLink),
                    ),
                    Text(
                      place.title,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      place.author,
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
