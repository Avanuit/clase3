import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 3',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const String userName = 'Prepucio Lopez';
  static const String userEmail = 'prepucio.lopez@gmail.com';

  final List<Widget> _views = const [
    HomeScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicacion XDDDDDDDD'),
        centerTitle: false,
        actions: [
          IconButton(

// Notificaciones

            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('No tienes nuevas notificaciones')),
              );
            },
          ),

// Ajustes

          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('No hay nada que ajustar.....')),
              );
            },
          ),
        ],
      ),

//Appbar

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text(userName),
              accountEmail: const Text(userEmail),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.greenAccent,
                backgroundImage: AssetImage('resources/images.jpg'),
              ),
              decoration: const BoxDecoration(
                color: Colors.purple,
              ),
            ),

//Icono 1 appbar

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
            ),

// Icono 2 appbar

            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Acerca de'),
            ),
          ],
        ),
      ),

//bottom bar

      body: _views[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

// Icono 1 bottom bar

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),

// Icono 2 bottom bar

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}