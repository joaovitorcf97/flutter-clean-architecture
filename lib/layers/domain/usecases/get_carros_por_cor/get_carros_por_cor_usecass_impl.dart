import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImpl implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroEntity(placa: 'ABC113', qtdPortas: 4, valor: 10000);
    }

    return CarroEntity(placa: 'AB7898', qtdPortas: 2, valor: 5000);
  }
}
