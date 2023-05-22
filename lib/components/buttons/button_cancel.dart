import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

import '../../screens/home.dart';

class ButtonCancel extends StatelessWidget {
  const ButtonCancel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? result = await showDialog<bool>(
          context: context,
          builder: (context) => _buildAlertDialog(context),
        );

        return result ?? false;
      },
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsTheme.alert,
          side: const BorderSide(
            width: 1.0,
            color: ColorsTheme.borderButtons,
          ),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => _buildAlertDialog(context),
          );
        },
        child: const Text(
          'Cancelar',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  Widget _buildAlertDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Atenção!', textAlign: TextAlign.center),
      content: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/cancelar.jpg',
            height: 200,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200),
            child: Text(
              'Todo progresso feito não será salvo!\nDeseja mesmo cancelar?',
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
                backgroundColor: ColorsTheme.alert,
                side: const BorderSide(
                  width: 1.0,
                  color: ColorsTheme.borderButtons,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('Não'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsTheme.background,
                side: const BorderSide(
                  width: 1.0,
                  color: ColorsTheme.borderButtons,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              child: const Text('Sim'),
            ),
          ],
        ),
      ],
    );
  }
}
