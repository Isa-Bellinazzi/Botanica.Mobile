import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class FormCampoGrande extends StatelessWidget {
  final String legenda;
  const FormCampoGrande({super.key, required this.legenda});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
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
            children: [
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
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
                  Icons.search_outlined,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}