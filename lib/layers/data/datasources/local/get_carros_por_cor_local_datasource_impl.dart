import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/data/dto/carro_dto.dart';
import 'package:dartz/dartz.dart';

class GetCarrosPorCorLocalDataSourceImpl implements GetCarrosPorCorDataSource {
  final jsonVermelho = {
    'placa': 'ABC123',
    'quantidade_de_portas': 4,
    'valor_final': 5000.00,
  };

  final jsonAny = {
    'placa': 'ABC456',
    'quantidade_de_portas': 2,
    'valor_final': 2000.00,
  };

  @override
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains('vermelho')) {
        return Right(CarroDto.fromMap(jsonVermelho));
      }
      return Right(CarroDto.fromMap(jsonAny));
    } catch (e) {
      return Left(Exception(''));
    }
  }
}
