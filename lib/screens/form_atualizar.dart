import 'package:flutter/material.dart';

import '../layouts/layer_atualizar.dart';

class FormAtualizar extends StatelessWidget {
  const FormAtualizar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 124, 20),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 4, 133, 22),
        centerTitle: true,
        title: const Text('Atualização de registro por id'),
      ),
      body: ListView(
        children: const [Center(child: LayerAtualizar())],
      ),
    );
  }
}
