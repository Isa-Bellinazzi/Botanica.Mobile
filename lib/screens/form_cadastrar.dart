import 'package:botanica_mobile/layouts/layer_cadastrar.dart';
import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class FormCadastrar extends StatelessWidget {
  const FormCadastrar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.backgroundAppbar,
      appBar: AppBar(
        title: const Text('Novo registro de Planta'),
        foregroundColor: Colors.black,
        backgroundColor: ColorsTheme.backgroundAppbar,
        centerTitle: true,
      ),
      body: ListView(
        children: const [Center(child: LayerCadastrar())],
      ),
    );
  }
}
