import 'package:flutter/material.dart';
import 'package:contest_tracker/screens/lomba1.dart';
import 'package:contest_tracker/screens/lomba2.dart';
import 'package:contest_tracker/screens/lomba3.dart';

class KategoriDetail extends StatelessWidget {
  const KategoriDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Ilmiah'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          buildNewsCard(
            title: 'ESAI NASIONAL',
            description: 'Lomba Essai Tingkat Nasional untuk Mahasiswa/Mahasiswi perguruan tinggi SMA/SMK/MA',
            imagePath: 'assets/images/lomba1_home.jpeg',
            onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const lomba1()),
                ),
          ),
          SizedBox(height: 16.0),
          buildNewsCard(
            title: 'SCIENCE COMPETITION',
            description: 'BEM FKP UNAIR Proudly Present: Natural and Education Science Competition In Nursing 2024',
            imagePath: 'assets/images/lomba2_home.jpeg',
            onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const lomba2()),
                ),
          ),
          SizedBox(height: 16.0),
          buildNewsCard(
            title: 'SOCIOLOGY COMPETITION',
            description: 'OSUM 2024 - Competition of Sociology UM [Beyond The Horizon, Be the Golden Generation]',
            imagePath: 'assets/images/lomba3_home.jpeg',
             onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const lomba3()),
                ),
          ),
        ],
      ),
    );
  }

  Widget buildNewsCard({required String title, required String description, required String imagePath, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 400, 
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
