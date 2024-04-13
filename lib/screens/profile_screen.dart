import 'package:flutter/material.dart';
import 'package:contest_tracker/screens/priv_screen.dart';
//import 'package:my_app/screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/profil_img.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              '@galuhrizkiii',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mahasiswa',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const Divider(height: 40),
            const SizedBox(height: 10),
            const ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text('Galuh Rizki Rahmaniyah',
              style: TextStyle(fontSize: 18)),
            ),
            //const Divider(),
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Universitas Pendidikan Ganesha',
              style: TextStyle(fontSize: 18)),
            ),
            //const Divider(),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Singaraja, Bali',
              style: TextStyle(fontSize: 18)),
            ),
            const Divider(height: 60),
            const SizedBox(),
            ElevatedButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivasiScreen()),
                ),
              child: const Text('Privasi Akun'
              , style: TextStyle(color: Color.fromARGB(255, 91, 152, 183))),
            ),
          ],
        ),
      ),
    );
  }
}
