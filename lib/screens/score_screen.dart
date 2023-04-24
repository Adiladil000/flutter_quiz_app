import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/constants.dart';
import '../controller/questions_controller.dart';
import 'menu_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 3),
            Text(
              "Nəticə",
              style: Theme.of(context).textTheme.displaySmall!.copyWith(color: kSecondaryColor),
            ),
            const Spacer(),
            Text(
              'Ümumi sual sayı : ${qnController.questions.length}',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: kSecondaryColor),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Doğru Cavab: ",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: kSecondaryColor),
                ),
                Text(
                  "${qnController.numOfCorrectAns}",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: kGreenColor),
                ),
              ],
            ),
            const Spacer(flex: 3),
            TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenuScreen(),
                      ),
                      (route) => false);
                },
                child: Text(
                  "Əsas səhifəyə qayıt",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: kGreenColor),
                ))
          ],
        ),
      ),
    );
  }
}
