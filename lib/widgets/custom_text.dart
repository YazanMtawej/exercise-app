
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title, this.onTap});
  final String title;
   final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.grey,
          width: double.infinity,
          height: 60,
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}