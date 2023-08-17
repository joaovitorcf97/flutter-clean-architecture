import 'package:arq/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  var controller = GetIt.instance.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carros'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
