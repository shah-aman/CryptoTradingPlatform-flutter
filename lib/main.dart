import 'package:flutter/material.dart';
import './components/WalletAppbar.dart';
import './pages/Exchange.dart';
import './pages/Market.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEMINI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        brightness: Brightness.dark,
        primaryColor: const Color(0x23272A),

        // Define the default font family.
        fontFamily: 'Roboto',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const HomeStatefulWidget(),
    );
  }
}

class HomeStatefulWidget extends StatefulWidget {
  const HomeStatefulWidget({super.key});

  @override
  State<HomeStatefulWidget> createState() => _HomeStatefulWidget();
}

class _HomeStatefulWidget extends State<HomeStatefulWidget> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white60);
  static const List<Widget> _widgetOptions = <Widget>[
    MarketPage(),
    ExchangePage(),
    Text(
      'Index 2: Wallet',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "GEMENI",
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.tune_outlined),
            label: 'Market',
            backgroundColor: Colors.white60,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Exchange',
            backgroundColor: Colors.white60,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
            backgroundColor: Colors.white60,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
