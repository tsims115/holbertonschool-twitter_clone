import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({ 
    Key? key,
    required this.label,
    required this.onPressed,
    }) : super(key: key);

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
            )
    ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: GoogleFonts.mulish(
            fontSize: 18,
            fontWeight: FontWeight.w800
          ),

        ),
      )
    );
  }
}
