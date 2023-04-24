import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/body.dart';
import '../const/constants.dart';
import '../controller/questions_controller.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController controller = Get.put(QuestionController());
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: backgroundColor,
          ),
          elevation: 0,
          backgroundColor: backgroundColor,
          actions: [
            TextButton(
              onPressed: controller.nextQuestion,
              child: Text(
                "Növbəti sual",
                style: TextStyle(color: Colors.deepPurpleAccent.shade100),
              ),
            )
          ],
        ),
        body: const Body(),
      ),
    );
  }
}
