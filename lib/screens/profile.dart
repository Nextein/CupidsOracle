import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Widget name = const Text("Marc Goulding");
  Widget age = const Text("24");
  Widget genderIdentity = const Icon(Icons.male);
  Widget sexIdentity = const Icon(Icons.female);
  Widget bio = const Text("Looking to share some light in this dark world.");
  Widget location = const Text("Barcelona, Spain");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Center(
        child: ListView(
          children: [
            // -1-
            const Image(
              image: AssetImage('assets/images/blank_profile.png'),
            ),
            // -2-
            name,
            // -3-
            age,
            // -4-
            Row(
              children: [
                genderIdentity,
                sexIdentity,
              ],
            ),
            bio,
            location,
          ],
        ),
      ),
    );
  }
}
