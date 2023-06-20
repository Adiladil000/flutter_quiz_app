import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomElevationButton extends StatelessWidget {
  const CustomElevationButton({super.key, required this.text, required this.faIcon, required this.onPressed});
  final String text;
  final Function() onPressed;
  final FaIcon faIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      height: MediaQuery.of(context).size.width / 6,
      width: MediaQuery.of(context).size.width / 1.3,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Text(
          text,
          style: const TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        ),
        icon: faIcon,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.white,
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
