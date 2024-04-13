import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:my_app/components/asset_image_widget.dart';
import 'package:contest_tracker/screens/kategoridetail.dart';


class KategoriScreen extends StatelessWidget {
  const KategoriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Perlombaan'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            _buildCategory(
              namakategori: 'Ilmiah',
              imagePaths: [
                'assets/images/lomba1.jpeg',
                'assets/images/lomba2.jpeg',
                'assets/images/lomba3.jpeg',
              ],
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KategoriDetail()),
                  ),
            ),
            const SizedBox(height: 20),
            _buildCategory(
              namakategori: 'Teknologi',
              imagePaths: [
                'assets/images/lomba1.jpeg',
                'assets/images/lomba2.jpeg',
                'assets/images/lomba3.jpeg',
              ],
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KategoriDetail()),
                  ),
            ),
            const SizedBox(height: 20),
            _buildCategory(
              namakategori: 'Sosial',
              imagePaths: [
                'assets/images/lomba1.jpeg',
                'assets/images/lomba2.jpeg',
                'assets/images/lomba3.jpeg',
              ],
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const KategoriDetail()),
                  ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory({required String namakategori, required List<String> imagePaths, required VoidCallback onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          title: Text(
            namakategori,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
          onTap: onTap,
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (String imagePath in imagePaths)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}