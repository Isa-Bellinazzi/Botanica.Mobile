import 'package:flutter/material.dart';
import 'package:botanica_mobile/themes/colors_theme.dart';

class ButtonReturn extends StatelessWidget {
  const ButtonReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsTheme.contrast,
            side: const BorderSide(width: 1.0), // Border color
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Voltar",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
