import 'package:flutter/material.dart';
import '../layouts/layer_excluir.dart';

class FormExcluir extends StatelessWidget {
  const FormExcluir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 124, 20),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 4, 133, 22),
        centerTitle: true,
        title: const Text('Exclusão de registro por id'),
      ),
      body: ListView(
        children: const [Center(child: LayerExcluir())],
      ),
    );
  }
}
