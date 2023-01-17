import 'package:flutter/material.dart';

class SignInBtn extends StatelessWidget {
  const SignInBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff6d61f2),
            foregroundColor:
                (MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? Colors.white
                    : Colors.black),
            minimumSize: Size(MediaQuery.of(context).size.width * 0.9, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Sign In',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: TextStyle(
                color: (MediaQuery.of(context).platformBrightness ==
                        Brightness.dark
                    ? Colors.white38
                    : Colors.black38),
                fontSize: 14,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Register"),
            )
          ],
        ),
      ],
    );
  }
}
