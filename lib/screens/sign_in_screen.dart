import 'package:flutter/material.dart';

import '../const/constants.dart';
import '../reusable_widget/reusable_widget.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: [
              logoWidget('assets/images/signIn.png'),
              const SizedBox(height: 30),
              reusableTextField('İstifadəçi adı', Icons.person_outline, false, _emailTextController),
              const SizedBox(height: 20),
              reusableTextField('Şifrə', Icons.lock, true, _passwordTextController),
              const SizedBox(height: 20),
              singInSignUpButton(context, true, () {}),
              signUpOption()
            ],
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Hesabınız yoxdur ?   ", style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            "Qeydiyyatdan keçin",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
