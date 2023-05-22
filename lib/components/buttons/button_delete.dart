import 'package:botanica_mobile/screens/home.dart';
import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class ButtonExcluir extends StatelessWidget {
  final String imageExcluir = 'assets/images/excluir_dialog.jpg';
  const ButtonExcluir({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorsTheme.contrast,
              side:
                  const BorderSide(width: 1.0, color: ColorsTheme.borderButtons)
              // Border color
              ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Esse registro será excluído!',
                    textAlign: TextAlign.center),
                content: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset(
                      imageExcluir,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          top:
                              200), // Ajuste o valor conforme necessário para definir a distância entre a imagem e o texto
                      child: Text(
                          'Deseja continuar com a exclusão desse registro?',
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
                          Navigator.pop(context);
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
                                  builder: (context) => const Home()),
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
            "Excluir",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
