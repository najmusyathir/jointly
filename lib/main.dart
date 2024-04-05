import 'package:flutter/material.dart';
import 'package:jointly/pages/setting_page.dart';
import 'package:jointly/pages/todo_details_page.dart';
import 'package:jointly/pages/calendar_page.dart';
import 'package:jointly/pages/list_page.dart';
import 'package:jointly/pages/login_page.dart';
import 'package:jointly/pages/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jointly',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: "Jointly: Beta Version"),
      routes: {
        '/todoDetailsPage': (context) => const ToDoDetailsPage(),
        '/calendarPage': (context) => const CalendarPage(),
        '/loginPage': (context) => LoginPage(),
        '/userPage': (context) => const UserPage(),
        '/settingPage': (context) => const SettingPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          ListPage(),
          CalendarPage(),
          UserPage(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                child: Text(
              "Jointly",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )),
             ListTile(
              title: const Text("Settings"),
              onTap: () {
                Navigator.pushNamed(context, '/settingPage');
              },
            ),
            ListTile(
              title: const Text("Account"),
              onTap: () {
                Navigator.pushNamed(context, '/loginPage');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
          )
        ],
      ),
    );
  }
}
