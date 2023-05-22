import 'package:flutter/material.dart';

class FormCampoMedioConsulta extends StatefulWidget {
  final String legenda;
  const FormCampoMedioConsulta({super.key, required this.legenda});

  @override
  State<FormCampoMedioConsulta> createState() => _FormCampoMedioConsultaState();
}

class _FormCampoMedioConsultaState extends State<FormCampoMedioConsulta> {
  String _invalidField(String value) {
    return "$value é necessário";
  }

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
                widget.legenda,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(7),
                  ),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: TextFormField(
                    keyboardType: TextInputType.name,
                    readOnly: true,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value == "") {
                        return _invalidField("Nome");
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {});
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
