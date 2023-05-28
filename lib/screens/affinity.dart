import 'package:cupidsoracle/theme.dart';
import 'package:flutter/material.dart';
import 'package:cupidsoracle/components/navbar.dart';

class AffinityScreen extends StatefulWidget {
  const AffinityScreen({super.key});

  @override
  State<AffinityScreen> createState() => _AffinityScreenState();
}

class _AffinityScreenState extends State<AffinityScreen> {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        // Foreground
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, navbarHeight + 10),
            child: ListView(
              children: const <Widget>[
                AffinityProfile(),
                AffinityProfile(),
                AffinityProfile(),
                AffinityProfile(),
                AffinityProfile(),
                AffinityProfile(),
                AffinityProfile(),
                AffinityProfile(),
                SeeMoreButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AffinityProfile extends StatelessWidget {
  const AffinityProfile({super.key});

  @override
  Widget build(BuildContext context) {
    const double height = 65;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: height,
        decoration: cardBackground,
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: const <Widget>[
                // Photo
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: height - 10,
                      child: Image(
                        image: AssetImage('assets/images/blank_profile.png'),
                      ),
                    ),
                  ),
                ),
                // Name
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Rocio"),
                  ),
                ),
                // Affinity Value
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("100%"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const double height = 65;
    double width = size.width * .4;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: height,
        width: width,
        decoration: cardBackground,
        child: const Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Placeholder(),
          ),
        ),
      ),
    );
  }
}
