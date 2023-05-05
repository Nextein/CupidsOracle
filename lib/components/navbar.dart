import 'package:cupidsoracle/theme.dart';
import 'package:flutter/material.dart';

class NavbarIcon extends StatelessWidget {
  const NavbarIcon({
    super.key,
    required this.page,
    required this.icon,
    required this.callback,
  });
  final int page;
  final IconData icon;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => {callback(page)},
        child: SizedBox(
          height: navbarHeight,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: iconBackground,
              child: Icon(
                icon,
                color: white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
