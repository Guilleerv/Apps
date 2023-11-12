import 'package:flutter/material.dart';

class PdfButton extends StatelessWidget {
  final VoidCallback onPress;
  final String? buttonText;

  PdfButton({required this.onPress, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(buttonText ?? 'Abrir PDF'),
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          Size(300, 75),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
