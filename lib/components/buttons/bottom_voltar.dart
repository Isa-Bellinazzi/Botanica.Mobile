import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

import '../../screens/home.dart';

class BottomVoltar extends StatelessWidget {
  const BottomVoltar({super.key});

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
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
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
