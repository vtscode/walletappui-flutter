import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImgPath;
  final String btnText;
  const MyButton({required this.btnText, required this.iconImgPath, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 30,
                spreadRadius: 10,
              )
            ],
          ),
          child: Center(
            child: Image.asset(iconImgPath),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          btnText,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[700],
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
