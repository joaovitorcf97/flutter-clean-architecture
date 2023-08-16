import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 1000,
    );

    expect(carroEntity, isNotNull);
  });

  test('Quantidade de portas seja 2', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 1000,
    );

    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que o valor real seja 2000.00', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 1000.00,
    );

    var resultadoEsperando = 2000.00;

    expect(carroEntity.valorReal, resultadoEsperando);
  });

  test('Espero que o valor real seja 2000.00', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 0,
      valor: 1000.00,
    );

    var resultadoEsperando = 0.0;

    expect(carroEntity.valorReal, resultadoEsperando);
  });

  test('Espero que o valor real seja 30 mil', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdPortas: 2,
      valor: 15000.00,
    );

    var resultadoEsperando = 30000.00;

    carroEntity.setLogica();

    expect(carroEntity.valor, resultadoEsperando);
  });
}
