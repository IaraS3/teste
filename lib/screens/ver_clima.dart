import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/titulo_secao.dart';
import 'package:flutter_application_1/models/clima.dart';

class VerClima extends StatelessWidget {

  final Clima clima;

  const VerClima({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão do Tempo')),
      body: Center(
        child: Column(
            children: [
              TituloSecao(titulo: 'Informações sobre o clima de ${clima.cidade}'),
              SizedBox(height: 20,),
              Text('Temperatura atual: ${clima.temperaturaAtual}°C'),
              Text('Temperatura mínima: ${clima.temperaturaMinima}'),
              Text('Temperatura máxima: ${clima.temperaturaMaxima}'),
              Text('Umidade: ${clima.umidade}'),
              Text('Chance de chuva: ${clima.chancheChuva}'),
            ],
        ),
      ),
    );
  }
}