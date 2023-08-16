import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImpl implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImpl(this._getCarrosPorCorDataSource);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }
}
