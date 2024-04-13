import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:contest_tracker/components/asset_image_widget.dart';

class lomba1 extends StatefulWidget {
  const lomba1({Key? key}) : super(key: key);

  @override
  _lomba1 createState() => _lomba1();
}

class _lomba1 extends State<lomba1> {
  int _count = 0;
  final String imageUrl = 'https://picsum.photos/250?image=9';
  
  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Lomba'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AssetImageWidget(
                    imagePath: 'assets/images/lomba1.jpeg',
                    width: 350,
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Lomba Essai Tingkat Nasional',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tema: Tantangan Infrastruktur di Era Global 5.0',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Deskripsi:',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Kami dari HIMA Prodi Teknik Sipil Universitas Widya Kartika mengadakan Lomba Essai Tingkat Nasional untuk Mahasiswa/Mahasiswi perguruan tinggi/SMA/SMK/MA.',
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Hadiah:',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(),
                  Text(
                    'Juara 1: Rp. 1.000.000 + e-Certificate\nJuara 2: Rp. 750.000 + e-Certificate\nJuara 3: Rp. 500.000 + e-Certificate',
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: _increment, icon: const Icon(Icons.thumb_up)),
                   IconButton(
                  onPressed: _decrement, icon: const Icon(Icons.thumb_down)),
              Text(
                '$_count Likes',
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}