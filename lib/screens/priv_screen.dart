import 'package:flutter/material.dart';

class PrivasiScreen extends StatelessWidget {
  const PrivasiScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privasi Akun'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const <Widget>[
          ListTile(
            title: Text('Kata Sandi'),
            leading: Icon(Icons.remove_red_eye),
            subtitle: Text('undikshaSI24'),
          ),
          Divider(),
          ListTile(
            title: Text('Email'),
            leading: Icon(Icons.email),
            subtitle: Text('galuh.rizki@gmail.com'),
          ),
          Divider(),
          ListTile(
            title: Text('Tanggal Bergabung'),
            leading: Icon(Icons.calendar_month),
            subtitle: Text('30 Maret 2024'),
          ),
          Divider(),
          ListTile(
            title: Text('Jenis Kelamin'),
            leading: Icon(Icons.person),
            subtitle: Text('Perempuan'),
          ),
          Divider(),
          ListTile(
            title: Text('Tanggal Lahir'),
            leading: Icon(Icons.cake),
            subtitle: Text('6 April 2004'),
          ),
          Divider(),
        ],
      ),
    );
  }
}