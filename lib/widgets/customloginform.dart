import 'package:flutter/material.dart';

class CustomLoginForm extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final void Function(String)? onChanged;

  const CustomLoginForm({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        suffixIcon: obscureText
            ? IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility),
              )
            : null,
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      ),
    );
  }
}
