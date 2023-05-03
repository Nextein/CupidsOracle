import 'package:cupidsoracle/theme.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Container(
          width: size.width * .95,
          height: 52,
          decoration: navbarBackground,
          child: Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 52,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: iconBackground,
                      child: const Icon(
                        Icons.home,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 52,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: iconBackground,
                      child: const Icon(
                        Icons.people,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 52,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: iconBackground,
                      child: const Icon(
                        Icons.forum,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 52,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: iconBackground,
                      child: const Icon(
                        Icons.person,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
