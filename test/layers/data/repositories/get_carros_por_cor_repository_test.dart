import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:arq/layers/data/repositories/get_carros_por_cor_repository_impl.dart';

import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDataSourceImpl();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImpl(dataSource);

  test('Devolva um carro independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
