import 'package:flutter/material.dart';

class EmailPasswordFields extends StatefulWidget {
  const EmailPasswordFields({super.key});
  @override
  State<EmailPasswordFields> createState() => _EmailPasswordFieldsState();
}

class _EmailPasswordFieldsState extends State<EmailPasswordFields> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor:
                (MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? const Color(0xff1f1f30)
                    : const Color(0xfff8f8fa)),
            label: const Text('Email'),
            labelStyle: TextStyle(
              color:
                  (MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Colors.white70
                      : Colors.black87),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              icon: Icon(
                obscureText ? Icons.visibility_off : Icons.remove_red_eye,
                color: (MediaQuery.of(context).platformBrightness ==
                        Brightness.dark
                    ? Colors.white38
                    : Colors.black38),
              ),
            ),
            filled: true,
            fillColor:
                (MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? const Color(0xff1f1f30)
                    : const Color(0xfff8f8fa)),
            label: const Text('Password'),
            labelStyle: TextStyle(
              color:
                  (MediaQuery.of(context).platformBrightness == Brightness.dark
                      ? Colors.white70
                      : Colors.black87),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
