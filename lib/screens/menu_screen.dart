import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/custom_elevation_button.dart';
import '../const/constants.dart';
import 'magistr_screen.dart';
import 'sign_in_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ));
              },
              icon: Icon(size: 30, color: kPerple, Icons.person))
        ],
        elevation: 0,
        backgroundColor: backgroundColor,
        leading: null,
      ),
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevationButton(
                  text: "  Magistır",
                  faIcon: const FaIcon(
                    FontAwesomeIcons.graduationCap,
                    color: Color.fromARGB(255, 36, 192, 207),
                  ),
                  onPressed: () {
                    var route = MaterialPageRoute(builder: (context) => const MagistrScreen());
                    Navigator.push(context, route);
                  }),
              CustomElevationButton(
                faIcon: const FaIcon(
                  FontAwesomeIcons.graduationCap,
                  color: Color.fromARGB(255, 40, 222, 52),
                ),
                text: " Bakalavr",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
