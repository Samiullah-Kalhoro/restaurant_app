import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/login_page.dart';

import '../widgets/email_password_fields.dart';
import '../widgets/fb_google_btns.dart';
import '../widgets/auth_btn.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Signup',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Register using',
                    style: TextStyle(
                      color: (MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.white38
                          : Colors.black38),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const FbGoogleBtns(),
                  const SizedBox(height: 10),
                  Text(
                    "or Signup with Email",
                    style: TextStyle(
                      color: (MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.white38
                          : Colors.black38),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const EmailPasswordFields(),
                  const SizedBox(
                    height: 40,
                  ),
                  AuthBtn(
                    btnText: 'Signup',
                    btnText2: 'Login',
                    haveAccount: 'Do have an account?',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
