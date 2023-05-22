import 'package:flutter/material.dart';
import '../components/buttons/button_cancel.dart';
import '../components/buttons/button_save.dart';
import '../components/form/form_campo_grande.dart';
import '../components/form/form_campo_imagem.dart';
import '../components/form/form_campo_medio.dart';
import '../components/form/form_campo_pequeno.dart';
import '../themes/colors_theme.dart';

class LayerCadastrar extends StatelessWidget {
  const LayerCadastrar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>(); // Adicione esta linha

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
                  FormCampoGrande(legenda: 'Nome da planta:', formKey: formKey),
                  FormCampoGrande(legenda: 'Cor da planta:', formKey: formKey),
                  const FormCampoMedio(legenda: 'Filo da planta:'),
                  const FormCampoPequeno(legenda: 'Possui sementes?'),
                  const FormCampoPequeno(legenda: 'Possui flores?'),
                  const FormCampoPequeno(legenda: 'Possui frutas?'),
                  const FormCampoMedio(legenda: 'Tipo de reprodução:'),
                  const FormCampoMedio(legenda: 'Tipo de ambiente:'),
                  const FormCampoPequeno(legenda: 'Possui vasos condutores?'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ButtonCancel(),
                      ButtonSave(formKey: formKey), // Atualize esta linha
                    ],
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
