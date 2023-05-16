import 'package:botanica_mobile/screens/form_atualizar.dart';
import 'package:botanica_mobile/screens/form_consulta_detalhada_planta.dart';
import 'package:botanica_mobile/screens/form_excluir.dart';
import 'package:botanica_mobile/screens/home_consulta.dart';
import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

import '../../screens/form_cadastrar.dart';

class BottomEndpoints extends StatelessWidget {
  final String functionBottom;
  const BottomEndpoints({super.key, required this.functionBottom});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          onPressed: () {
            if (functionBottom == "Realizar Cadastro") {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const FormCadastrar()),
              );
            } else if (functionBottom == "Realizar Atualização") {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const FormAtualizar()),
              );
            } else if (functionBottom == "Realizar Consulta") {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomeConsulta()),
              );
            } else if (functionBottom == "Consultar por ID") {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const FormConsultaDetalhada()),
              );
            } else if (functionBottom == "Realizar Exclusão") {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const FormExcluir()),
              );
            }
          },
          child: Text(
            functionBottom,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
