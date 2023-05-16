import 'package:flutter/material.dart';

import '../../screens/home.dart';

class BottomCancel extends StatelessWidget {
  const BottomCancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.red)),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
          },
          child: const Text(
            "Cancelar",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
