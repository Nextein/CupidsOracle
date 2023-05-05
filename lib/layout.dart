import 'package:cupidsoracle/components/navbar.dart';
import 'package:cupidsoracle/screens/affinity.dart';
import 'package:cupidsoracle/screens/chat.dart';
import 'package:cupidsoracle/screens/play.dart';
import 'package:cupidsoracle/screens/profile.dart';
import 'package:cupidsoracle/theme.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({
    super.key,
    this.page = 0,
  });
  final int page;

  @override
  State<Layout> createState() => LayoutState();
}

class LayoutState extends State<Layout> {
  int _selectedPage = 1;
  static const List<Widget> _pages = <Widget>[
    // PlayScreen(),
    // AffinityScreen(),
    // ChatMenu(),
    // Profile(),
    PlayMenu(),
    AffinityScreen(),
    Text("2"),
    Text("3"),
  ];

  void _onItemTapped(int page) {
    setState(() {
      _selectedPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: backgroundGradient,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                width: size.width * .95,
                height: navbarHeight,
                decoration: navbarBackground,
                child: Row(
                  children: <Widget>[
                    NavbarIcon(
                      page: 0,
                      icon: Icons.favorite,
                      callback: _onItemTapped,
                    ),
                    NavbarIcon(
                      page: 1,
                      icon: Icons.people,
                      callback: _onItemTapped,
                    ),
                    NavbarIcon(
                      page: 2,
                      icon: Icons.forum,
                      callback: _onItemTapped,
                    ),
                    NavbarIcon(
                      page: 3,
                      icon: Icons.person,
                      callback: _onItemTapped,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // PAGE
          Container(
            child: _pages.elementAt(_selectedPage),
          ),
        ],
      ),
    );
  }
}

// class _LayoutState extends State<Layout> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Cupid's Oracle",
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedPage,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.purple[200],
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.question_answer),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: "",
//           ),
//         ],
//       ),
//       body: _pages.elementAt(_selectedPage),
//     );
//   }
// }
