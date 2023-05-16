import 'package:flutter/material.dart';
import '../components/box_card.dart';
import '../components/form/form_logo_magna.dart';
import '../components/sections/header.dart';
import '../themes/colors_theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsTheme.background,
      body: ListView(
        children: const <Widget>[
          Header(),
          BoxCard(
              endpoint: 'Cadastrar',
              functionBottom: 'Realizar Cadastro',
              image: 'assets/images/Cadastrar.png'),
          BoxCard(
              endpoint: 'Atualizar',
              functionBottom: 'Realizar Atualização',
              image: 'assets/images/Atualizar.png'),
          BoxCard(
              endpoint: 'Consultar',
              functionBottom: 'Realizar Consulta',
              image: 'assets/images/Consultar.png'),
          BoxCard(
              endpoint: 'Relatório',
              functionBottom: 'Análisar Gráficos',
              image: 'assets/images/Relatorio.png'),
          BoxCard(
              endpoint: 'Excluir',
              functionBottom: 'Realizar Exclusão',
              image: 'assets/images/Excluir.png'),
          SizedBox(
            height: 40,
          ),
          FormLogoMagna(
            image: 'assets/images/magna.png',
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
