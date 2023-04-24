import 'package:flutter/material.dart';

import '../const/constants.dart';
import '../reusable_widget/reusable_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(icon: Icon(color: Colors.deepPurpleAccent.shade100, Icons.arrow_back_outlined), onPressed: () {}),
        //centerTitle: true,
        backgroundColor: backgroundColor,
        elevation: 0,
        // title: const Text(
        //   "Qeydiyyat",
        //   style: TextStyle(color: Color.fromARGB(255, 38, 0, 141), fontSize: 24, fontWeight: FontWeight.bold),
        // ),
      ),
      body: Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 10),
            child: Column(
              children: [
                logoWidget('assets/images/signUp.png'),
                const SizedBox(height: 20),
                reusableTextField('İstifadəçi adı', Icons.person_outline, false, _userNameTextController),
                const SizedBox(height: 20),
                reusableTextField('Email', Icons.person_outline, false, _emailTextController),
                const SizedBox(height: 20),
                reusableTextField('Şifrə', Icons.lock, true, _passwordTextController),
                const SizedBox(height: 20),
                singInSignUpButton(context, false, () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
