import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/constants.dart';
import '../controller/questions_controller.dart';
import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ProgressBar(),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Obx(() => Text.rich(
                  TextSpan(
                    text: 'Sual ${questionController.questionNumber.value}',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                          text: "/${questionController.questions.length}",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: kSecondaryColor,
                              ))
                    ],
                  ),
                )),
          ),
          const Divider(thickness: 1.5),
          const Center(
            child: Text(
              'Növbəti suala keçmək üçün  "Növbəti sual" düyməsinə tıklayın',
              style: TextStyle(fontSize: 11),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Expanded(
              child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: questionController.pageController,
            onPageChanged: questionController.updateTheQnNum,
            itemCount: questionController.questions.length,
            itemBuilder: (context, index) => QuestionCard(
              question: questionController.questions[index],
            ),
          ))
        ],
      ),
    );
  }
}
