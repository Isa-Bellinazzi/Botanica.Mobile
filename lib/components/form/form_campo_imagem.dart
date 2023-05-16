import 'package:flutter/material.dart';

import '../../themes/colors_theme.dart';

class FormCampoImagem extends StatelessWidget {
  final String legenda;
  const FormCampoImagem({super.key, required this.legenda});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                legenda,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Text(
                ' *',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: const Icon(Icons.image_outlined, size: 100),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsTheme.contrast,
                  side: const BorderSide(
                    width: 1.0,
                  ), // Background color
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.add_a_photo_sharp,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsTheme.contrast,
                  side: const BorderSide(
                    width: 1.0,
                  ), // Background color
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.add_photo_alternate_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
