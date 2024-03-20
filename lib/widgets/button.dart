import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade900,
          minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}
