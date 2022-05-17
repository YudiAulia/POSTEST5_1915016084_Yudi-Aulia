import 'package:flutter/material.dart';

class namaDetailPage {
  final String title;
  final String description;

  const namaDetailPage(this.title, this.description);
}

class detailPage extends StatelessWidget {
  const detailPage({ Key? key , required this.namaRuangan}) : super(key: key);

  final String namaRuangan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageScreen(
        judul: List.generate(
          16,
          (i) => namaDetailPage(
            '$namaRuangan $i',
            'Device Belum Tersedia',
          ),
        ),
      ),
    );
  }
}

class pageScreen extends StatelessWidget {
  const pageScreen({Key? key, required this.judul}) : super(key: key);

  final List<namaDetailPage> judul;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Home"),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(judul[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(detail: judul[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.detail}) : super(key: key);

  final namaDetailPage detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detail.title),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(detail.description),
      ),
    );
  }
}