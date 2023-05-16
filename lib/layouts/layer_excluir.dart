import 'package:flutter/material.dart';
import '../components/buttons/bottom_cancel.dart';
import '../components/buttons/bottom_excluir.dart';
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
            height: 1100,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: ColorsTheme.headerGradient),
              borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      children: [
                        const FormCampoImagemConsulta(legenda: 'Imagem:'),
                        const FormCampoGrandeConsulta(legenda: 'Nome:'),
                        const FormCampoPequenoConsulta(legenda: 'Cor:'),
                        const FormCampoGrandeConsulta(legenda: 'Filo:'),
                        const FormCampoPequenoConsulta(legenda: 'Sementes:'),
                        const FormCampoPequenoConsulta(legenda: 'Flores:'),
                        const FormCampoPequenoConsulta(legenda: 'Frutas:'),
                        const FormCampoGrandeConsulta(legenda: 'Reprodução:'),
                        const FormCampoGrandeConsulta(legenda: 'Ambiente:'),
                        const FormCampoPequenoConsulta(
                            legenda: 'Vasos Condutores:'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [BottomCancel(), BottomExcluir()],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
