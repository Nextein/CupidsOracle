import 'package:cupidsoracle/screens/profile.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedPage = 0;
  static const List<Widget> _pages = <Widget>[
    Text('Play'),
    Text('Match'),
    Text('Chat'),
    Profile(),
  ];

  void _onItemTapped(int page) {
    setState(() {
      _selectedPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cupid's Oracle",
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: _onItemTapped,
        selectedItemColor: Colors.purple[200],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "",
          ),
        ],
      ),
      body: _pages.elementAt(_selectedPage),
    );
  }
}
