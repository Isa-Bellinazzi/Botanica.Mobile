import 'package:botanica_mobile/screens/form_atualizar.dart';
import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

import '../../screens/home.dart';

class ButtonUpdate extends StatelessWidget {
  final String image = 'assets/images/atualizar_dialog.jpg';
  const ButtonUpdate({super.key});

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
                  width: 1.0, color: ColorsTheme.borderButtons)),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Registro atualizado com sucesso!',
                    textAlign: TextAlign.center),
                content: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      image,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          top:
                              200), // Ajuste o valor conforme necessário para definir a distância entre a imagem e o texto
                      child: Text('Deseja atualizar mais um registro?',
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          backgroundColor: ColorsTheme.alert,
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                              (route) => false);
                        },
                        child: const Text('Não'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          backgroundColor: ColorsTheme.backgroundAppbar,
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FormAtualizar()),
                              (route) => false);
                        },
                        child: const Text('Sim'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          child: const Text(
            "Atualizar",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
