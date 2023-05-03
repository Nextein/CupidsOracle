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
          Container(
            decoration: cardBackground,
          ),
        ],
      ),
    );
  }
}
