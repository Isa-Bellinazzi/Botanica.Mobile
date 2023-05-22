import 'package:botanica_mobile/components/buttons/button_update.dart';
import 'package:flutter/material.dart';

import '../components/buttons/button_cancel.dart';
import '../components/form/form_campo_grande.dart';
import '../components/form/form_campo_id.dart';
import '../components/form/form_campo_imagem.dart';
import '../components/form/form_campo_medio.dart';
import '../components/form/form_campo_pequeno.dart';
import '../themes/colors_theme.dart';

class LayerAtualizar extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  LayerAtualizar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Dialog.fullscreen(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 360,
              height: 1300,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: ColorsTheme.headerGradient),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const FormCampoImagem(
                    legenda: 'Inserir imagem da Planta:',
                  ),
                  Column(
                    children: const [
                      FormCampoId(
                        legenda: "Insira o ID do registro:",
                      ),
                    ],
                  ),
                  const FormCampoMedio(legenda: 'Nome da Planta:'),
                  const FormCampoMedio(legenda: 'Cor da Planta:'),
                  FormCampoGrande(legenda: 'Filo da Planta:', formKey: formKey),
                  const FormCampoPequeno(legenda: 'Possui sementes?'),
                  const FormCampoPequeno(legenda: 'Possui flores?'),
                  const FormCampoPequeno(legenda: 'Possui frutas?'),
                  const FormCampoMedio(legenda: 'Tipo de reprodução:'),
                  const FormCampoMedio(legenda: 'Tipo de ambiente:'),
                  const FormCampoPequeno(legenda: 'Possui vasos condutores?'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [ButtonCancel(), ButtonUpdate()],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
