import 'package:flutter/material.dart';
import 'package:contest_tracker/components/My_button.dart';
import 'package:contest_tracker/components/My_textfield.dart';
import 'package:contest_tracker/screens/home_screen.dart';
import 'package:contest_tracker/screens/kategori_screen.dart';
import 'package:contest_tracker/screens/lomba_screen.dart';
import 'package:contest_tracker/screens/profile_screen.dart';
import 'package:contest_tracker/screens/priv_screen.dart';
import 'package:contest_tracker/screens/news_feed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class LoginPage extends StatelessWidget {
  void signUserIn(BuildContext context) {
    // Navigasi ke layar utama tanpa verifikasi
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(title: 'Home Screen'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('LOGIN PAGE'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Logo1.png',
                width: 290,
                height: 290,
              ),
              SizedBox(),
              Text(
                'Silahkan Login!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              MyTextfield(
                controller: usernameController,
                hintText: 'Username / Account',
                obscureText: false,
              ),
              SizedBox(
                height: 10,
              ),
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              SizedBox(),
              SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: () => signUserIn(context),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const KategoriScreen(),
    const ProfileScreen(),
    const PrivasiScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'Kategori',
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _appBarTitles[_selectedIndex],
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: _screens[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profil_img.jpg'),
                    radius: 45,
                  ),
                  SizedBox(height: 10),
                  Text(
                    '@galuhrizkiii',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Galuh Rizki Rahmaniyah'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Universitas Pendidikan Ganesha'),
              leading: Icon(Icons.school),
            ),
            ListTile(
              title: Text('Singaraja, Bali'),
              leading: Icon(Icons.location_on),
            ),
            Divider(),
            ListTile(
              title: Text('API Screen'),
              leading: Icon(Icons.edit_note),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsFeed()),
                );
              },
            ),
            ListTile(
              title: Text('Lomba screen'),
              leading: Icon(Icons.edit_calendar),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LombaScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_calendar),
            label: 'Kategori',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
