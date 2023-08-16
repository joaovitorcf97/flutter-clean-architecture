import 'package:arq/layers/data/dto/carro_dto.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImpl implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    var json = {
      'placa': 'ABC123',
      'quantidade_de_portas': 2,
      'valor_final': 1000.00,
    };

    return CarroDto.fromMap(json);
  }
}

void main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImpl();

  test('Devolva um carro independente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
