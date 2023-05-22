import 'package:flutter/material.dart';
import '../components/buttons/button_cancel.dart';
import '../components/buttons/button_delete.dart';
import '../components/form/form_campo_grande_consulta.dart';
import '../components/form/form_campo_id.dart';
import '../components/form/form_campo_imagem_consulta.dart';
import '../components/form/form_campo_pequeno_consulta.dart';
import '../themes/colors_theme.dart';

class LayerExcluir extends StatelessWidget {
  const LayerExcluir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 360,
            height: 1200,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: ColorsTheme.headerGradient),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormCampoId(
                  legenda: "Insira o ID do registro para excluir:",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Informações do registro:',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 320,
                    height: 960,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Column(
                      children: const [
                        FormCampoImagemConsulta(legenda: 'Imagem:'),
                        FormCampoGrandeConsulta(legenda: 'Nome:'),
                        FormCampoPequenoConsulta(legenda: 'Cor:'),
                        FormCampoGrandeConsulta(legenda: 'Filo:'),
                        FormCampoPequenoConsulta(legenda: 'Sementes:'),
                        FormCampoPequenoConsulta(legenda: 'Flores:'),
                        FormCampoPequenoConsulta(legenda: 'Frutas:'),
                        FormCampoGrandeConsulta(legenda: 'Reprodução:'),
                        FormCampoGrandeConsulta(legenda: 'Ambiente:'),
                        FormCampoPequenoConsulta(legenda: 'Vasos Condutores:'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [ButtonCancel(), ButtonExcluir()],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
