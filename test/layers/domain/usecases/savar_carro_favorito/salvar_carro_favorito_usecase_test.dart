import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase_impl.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImpl(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 1000);
    var result = await useCase(carro);

    expect(result, true);
  });

  test('Espero que não salve o carro quando o valor for menor ou igual a Zero',
      () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUseCaseImpl(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'ABC123', qtdPortas: 2, valor: 0);
    var result = await useCase(carro);

    expect(result, false);
  });
}
