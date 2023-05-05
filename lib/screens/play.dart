// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:cupidsoracle/theme.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // BACKGOUND
          Container(
            decoration: backgroundGradient,
          ),
          // Container(
          //   height: size.height * 0.7,
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/images/blank_profile.png'),
          //     ),
          //   ),
          // ),
          // FOREGROUND
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  // ICONO
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: width * .1,
                        height: width * .1,
                        alignment: Alignment.center,
                        // decoration: iconBackground,
                        child: const Icon(Icons.home),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: height * .25,
                      child: Container(
                        decoration: cardBackground,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: height * .1,
                      child: const Placeholder(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: height * .1,
                      child: const Placeholder(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: height * .1,
                      child: const Placeholder(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: height * .1,
                      child: const Placeholder(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 52,
              width: 52,
              child: const Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}

class PlayMenu extends StatelessWidget {
  const PlayMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Foreground
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, navbarHeight + 10),
            child: ListView(
              children: [
                Placeholder(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
