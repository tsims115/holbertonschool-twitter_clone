import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  const CustomEntryField({ 
    Key? key,
    required this.hint,
    required this.controller,
    this.isPassword = false
    }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade200,
        border: Border.all(
          color: Colors.blue
        )
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
        ),
      )
    );
  }
}
