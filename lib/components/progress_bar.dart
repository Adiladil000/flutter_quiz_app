import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../const/constants.dart';
import '../controller/questions_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 25,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF3F4768),
            width: 3,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            print(controller.animation.value);
            return Stack(children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: kPrimaryGradient,
                  ),
                ),
              ),
              Positioned.fill(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Text("${(60 - controller.animation.value * 60).round()} dəq."),
                    const FaIcon(
                      FontAwesomeIcons.clock,
                      size: 15,
                    )
                  ],
                ),
              ))
            ]);
          }),
    );
  }
}
