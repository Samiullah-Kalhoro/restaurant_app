import 'package:flutter/material.dart';

class FbGoogleBtns extends StatelessWidget {
  const FbGoogleBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: (MediaQuery.of(context).platformBrightness == Brightness.dark
                ? const Color(0xff1f1f30)
                : const Color(0xfff8f8fa)),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/fb.png'),
          ),
        ),
        Container(
          width: 150,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: (MediaQuery.of(context).platformBrightness == Brightness.dark
                ? const Color(0xff1f1f30)
                : const Color(0xfff8f8fa)),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/google.png'),
          ),
        ),
      ],
    );
  }
}
