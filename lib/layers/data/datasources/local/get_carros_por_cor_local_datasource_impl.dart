import 'package:arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:arq/layers/data/dto/carro_dto.dart';

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
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonAny);
  }
}
