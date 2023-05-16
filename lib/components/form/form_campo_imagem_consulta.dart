import 'package:flutter/material.dart';

class FormCampoImagemConsulta extends StatelessWidget {
  final String legenda;
  const FormCampoImagemConsulta({super.key, required this.legenda});

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
        ],
      ),
    );
  }
}
