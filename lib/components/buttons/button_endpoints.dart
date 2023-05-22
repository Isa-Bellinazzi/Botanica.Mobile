import 'package:flutter/material.dart';
import 'package:botanica_mobile/screens/form_atualizar.dart';
import 'package:botanica_mobile/screens/form_consulta_detalhada_planta.dart';
import 'package:botanica_mobile/screens/form_excluir.dart';
import 'package:botanica_mobile/screens/home_consulta.dart';
import 'package:botanica_mobile/screens/form_cadastrar.dart';
import 'package:botanica_mobile/themes/colors_theme.dart';

class ButtonEndpoints extends StatelessWidget {
  final String functionBottom;

  const ButtonEndpoints({Key? key, required this.functionBottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsTheme.contrast,
            side: const BorderSide(width: 1.0), // Border color
          ),
          onPressed: () {
            _navigateToRoute(context);
          },
          child: Text(
            functionBottom,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  void _navigateToRoute(BuildContext context) {
    Widget destinationRoute;

    switch (functionBottom) {
      case "Realizar Cadastro":
        destinationRoute = const FormCadastrar();
        break;
      case "Realizar Atualização":
        destinationRoute = const FormAtualizar();
        break;
      case "Realizar Consulta":
        destinationRoute = const HomeConsulta();
        break;
      case "Consultar por ID":
        destinationRoute = const FormConsultaDetalhada();
        break;
      case "Realizar Exclusão":
        destinationRoute = const FormExcluir();
        break;
      default:
        return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destinationRoute),
    );
  }
}
