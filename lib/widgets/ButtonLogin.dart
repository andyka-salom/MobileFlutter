import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonLogin({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF93BFCF), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
