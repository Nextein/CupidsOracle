// ignore_for_file: sized_box_for_whitespace

import 'package:cupidsoracle/theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: backgroundGradient,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(35),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width * .7,
                  height: size.height * .8,
                  decoration: cardBackground,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: size.height * .8 * .4,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 35,
                            ),
                            child: Placeholder(),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .8 * .2,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 15,
                            ),
                            child: Placeholder(),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .8 * .2,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 35,
                              vertical: 15,
                            ),
                            child: Placeholder(),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .8 * .2,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 65,
                              vertical: 25,
                            ),
                            child: Placeholder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
