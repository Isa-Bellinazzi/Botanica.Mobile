import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LetterOnlyTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newText = newValue.text.toUpperCase();
    return TextEditingValue(
      text: newText,
      selection: newValue.selection.copyWith(
        baseOffset: newText.length,
        extentOffset: newText.length,
      ),
    );
  }
}

class FormCampoGrande extends StatefulWidget {
  final String legenda;

  const FormCampoGrande(
      {Key? key, required this.legenda, required GlobalKey<FormState> formKey})
      : super(key: key);

  @override
  _FormCampoGrandeState createState() => _FormCampoGrandeState();
}

class _FormCampoGrandeState extends State<FormCampoGrande> {
  final formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get getFormKey => formKey;

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
                  color: Colors.black,
                ),
              ),
              const Text(
                ' *',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Form(
                key: formKey,
                child: Container(
                  width: 190,
                  height: 37,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(7),
                    ),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter,
                      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                      LetterOnlyTextFormatter(),
                    ],
                    decoration: const InputDecoration(border: InputBorder.none),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'O campo ${widget.legenda} é obrigatório';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
