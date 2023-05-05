import 'package:cupidsoracle/theme.dart';
import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: backgroundGradient,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 35,
            ),
            child: Container(
              decoration: cardBackground,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Placeholder(),
                  ),
                  Placeholder(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
