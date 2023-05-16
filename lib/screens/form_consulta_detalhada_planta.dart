import 'package:botanica_mobile/layouts/layer_.consulta_detalhada.dart';
import 'package:flutter/material.dart';

class FormConsultaDetalhada extends StatelessWidget {
  const FormConsultaDetalhada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 124, 20),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 4, 133, 22),
        centerTitle: true,
        title: const Text('Consulta de registro por id'),
      ),
      body: ListView(
        children: const [Center(child: LayerConsultaDetalhada())],
      ),
    );
  }
}
