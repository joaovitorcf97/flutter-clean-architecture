import 'package:arq/layers/data/repositories/salvar_carro_favorito_repository_impl.dart';
import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImpl(
      SalvarCarroFavoritoRepositoryImpl(),
    );

    var carro = CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);
    var result = await useCase(carro);
    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, true);
  });

  test('Espero que não salve o carro quando o valor for menor ou igual a Zero',
      () async {
    SalvarCarroFavoritoUseCase useCase = SalvarCarroFavoritoUseCaseImpl(
      SalvarCarroFavoritoRepositoryImpl(),
    );

    var carro = CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 0);
    var result = await useCase(carro);

    late bool resultExpect;

    result.fold((l) => null, (r) => resultExpect = r);

    expect(resultExpect, false);
  });
}
