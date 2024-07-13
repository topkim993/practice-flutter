import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const FlatButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(5, 199, 90, 1),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
