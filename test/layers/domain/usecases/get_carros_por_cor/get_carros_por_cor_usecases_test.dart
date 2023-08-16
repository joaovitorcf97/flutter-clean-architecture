import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecass_impl.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImpl implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC123', qtdPortas: 4, valor: 5000.00);
    }
    return CarroEntity(placa: 'ABC456', qtdPortas: 2, valor: 2000.00);
  }
}

void main() {
  test(
    'Deve retornar uma instancia de carro quando passado qualquer cor',
    () {
      GetCarrosPorCorUseCase useCase =
          GetCarrosPorCorUseCaseImpl(GetCarrosPorCorRepositoryImpl());

      var result = useCase('azul');

      expect(result, isInstanceOf<CarroEntity>());
    },
  );

  test('Deve retornar um carro de quatro portas quando vermelhor', () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImpl(GetCarrosPorCorRepositoryImpl());

    var result = useCase('vermelho');

    expect(result.qtdPortas, 4);
  });

  test(
    'Deve retornar um carro de duas portas quando qualquer cor exceto vermelho',
    () {
      GetCarrosPorCorUseCase useCase =
          GetCarrosPorCorUseCaseImpl(GetCarrosPorCorRepositoryImpl());

      var result = useCase('verde');

      expect(result.qtdPortas, 2);
    },
  );
}
