import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class BottomExcluir extends StatelessWidget {
  const BottomExcluir({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll<Color>(ColorsTheme.contrast),
          ),
          onPressed: () {},
          child: const Text(
            "Excluir",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
