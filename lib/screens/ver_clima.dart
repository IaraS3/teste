import 'package:flutter/material.dart';
import 'package:teste/widgets/titulo_secao.dart';
import 'package:teste/models/clima.dart';


class VerClima extends StatelessWidget {
  final Clima clima;
  const VerClima({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão do tempo')),
      body: Center(
        child: Column(
          children: [
            TituloSecao(titulo:'Informação sobre o clima de ${clima.cidade}'),
            SizedBox(height: 20),
            Text('Temperatura atual: ${clima.temperaturaAtual}°C'),
            Text('Temperatura mínima: ${clima.temperaturaMinima}°C'),
            Text('Temperatura máxima: ${clima.temperaturaMaxima}°C'),
            Text('Umidade: ${clima.umidade}%'),
            Text('Chance de chuva: ${clima.chancheChuva}'),
          ],
        ),
      ),
    );
  }
}