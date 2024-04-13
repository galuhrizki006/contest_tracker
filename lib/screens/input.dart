import 'package:contest_tracker/service/dataservice.dart';
import 'package:flutter/material.dart';
//import 'input.dart';

class InputApi extends StatefulWidget {
  const InputApi({super.key});

  @override
  State<InputApi> createState() => _InputApiState();
}

class _InputApiState extends State<InputApi> {
  final _simpanDataTitle = TextEditingController();
  final _simpanDataBody = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30),
            TextField(
              controller: _simpanDataTitle,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan judul',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _simpanDataBody,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Masukan deskripsi',
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  Dataservice.postEvent(
                    _simpanDataTitle.text,
                    _simpanDataBody.text,
                  );
                  Navigator.of(context).pop();
                });
              },
              icon: Icon(Icons.send),
              label: Text('Kirim'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white70,
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
