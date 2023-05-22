import 'package:flutter/material.dart';

import '../../screens/form_cadastrar.dart';
import '../../screens/home.dart';
import '../../themes/colors_theme.dart';

class ButtonSave extends StatelessWidget {
  final String image = 'assets/images/cadastrar_dialog.jpg';
  final GlobalKey<FormState> formKey;

  const ButtonSave({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsTheme.backgroundAppbar,
            side: const BorderSide(width: 1.0, color: Colors.black),
          ),
          onPressed: () {
            formKey.currentState?.validate();
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text(
                  'Registro cadastrado com sucesso!',
                  textAlign: TextAlign.center,
                ),
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
                            200, // Ajuste o valor conforme necessário para definir a distância entre a imagem e o texto
                      ),
                      child: Text(
                        'Deseja incluir mais um registro?',
                        textAlign: TextAlign.center,
                      ),
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
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                            (route) => false,
                          );
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
                              builder: (context) => const FormCadastrar(),
                            ),
                            (route) => false,
                          );
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
            "Salvar",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
