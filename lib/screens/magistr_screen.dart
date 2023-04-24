import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../components/custom_elevation_button.dart';
import 'quiz_screen.dart';

class MagistrScreen extends StatelessWidget {
  const MagistrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              color: Colors.deepPurpleAccent.shade100,
              Icons.chevron_left_rounded,
              size: 35,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 241, 233, 206)),
      backgroundColor: const Color.fromARGB(255, 241, 233, 206),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevationButton(
                  text: "   Magistır 2021",
                  faIcon: const FaIcon(
                    size: 27,
                    FontAwesomeIcons.fileLines,
                    color: Color.fromARGB(255, 36, 192, 207),
                  ),
                  onPressed: () => Get.to(const QuizScreen())),
              CustomElevationButton(
                faIcon: const FaIcon(
                  size: 27,
                  FontAwesomeIcons.fileLines,
                  color: Color.fromARGB(255, 40, 222, 52),
                ),
                text: "   Magistır 2022",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
