import 'package:flutter/material.dart';

class AuthBtn extends StatelessWidget {
  const AuthBtn({
    Key? key,
    required this.btnText,
    required this.btnText2,
    required this.haveAccount,
    required this.onPressed,
  }) : super(key: key);

  final String btnText;
  final String btnText2;
  final String haveAccount;
  final void Function() onPressed;

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
          child: Text(
            btnText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              haveAccount,
              style: TextStyle(
                color: (MediaQuery.of(context).platformBrightness ==
                        Brightness.dark
                    ? Colors.white38
                    : Colors.black38),
                fontSize: 14,
              ),
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(btnText2),
            )
          ],
        ),
      ],
    );
  }
}
