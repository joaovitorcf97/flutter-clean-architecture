import 'package:arq/layers/data/datasources/local/get_carros_por_cor_local_datasource_impl.dart';
import 'package:arq/layers/data/repositories/get_carros_por_cor_repository_impl.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecass_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Deve retornar uma instancia de carro quando passado qualquer cor',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
        GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDataSourceImpl()),
      );

      var result = useCase('azul');

      late CarroEntity resultExpect;

      result.fold((l) => null, (r) => resultExpect = r);

      expect(resultExpect, isInstanceOf<CarroEntity>());
    },
  );

  test('Deve retornar um carro de quatro portas quando vermelhor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
      GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDataSourceImpl()),
    );

    var result = useCase('vermelho');
    late CarroEntity resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect.qtdPortas, 4);
  });

  test(
    'Deve retornar um carro de duas portas quando qualquer cor exceto vermelho',
    () {
      GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImpl(
        GetCarrosPorCorRepositoryImpl(GetCarrosPorCorLocalDataSourceImpl()),
      );

      var result = useCase('verde');

      late CarroEntity resultExpect;

      result.fold((l) => null, (r) => resultExpect = r);

      expect(resultExpect.qtdPortas, 2);
    },
  );
}
