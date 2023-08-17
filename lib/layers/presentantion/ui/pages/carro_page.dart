import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:arq/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:arq/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecass_impl.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_impl.dart';
import 'package:arq/layers/presentantion/controllers/carro_controller.dart';
import 'package:flutter/material.dart';

class CarroPage extends StatelessWidget {
  CarroPage({super.key});

  CarroController controller = CarroController(
    GetCarrosPorCorUseCaseImpl(
      GetCarrosPorCorRepositoryImpl(
        GetCarrosPorCorLocalDataSourceImpl(),
      ),
    ),
    SalvarCarroFavoritoUseCaseImpl(
      SalvarCarroFavoritoRepositoryImpl(),
    ),
  );

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
