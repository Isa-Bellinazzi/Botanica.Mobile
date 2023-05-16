import 'package:flutter/material.dart';

import '../../screens/home.dart';

class BottomSave extends StatelessWidget {
  const BottomSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
          child: const Text(
            "Salvar",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
