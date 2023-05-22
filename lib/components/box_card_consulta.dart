import 'package:botanica_mobile/components/buttons/button_endpoints.dart';
import 'package:botanica_mobile/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class BoxCardConsulta extends StatelessWidget {
  final String endpoint;
  final String functionBottom;
  final String legenda;
  const BoxCardConsulta({
    Key? key,
    required this.endpoint,
    required this.functionBottom,
    required this.legenda,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.transparent,
      child: Container(
        width: mediaQuery,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(18)),
          color: ColorsTheme.backgroundCard,
          border: Border.all(width: 3, color: Colors.black),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 10.0, 5.0, 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    endpoint,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.search_sharp,
                        size: 30,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    legenda,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonEndpoints(functionBottom: functionBottom),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
