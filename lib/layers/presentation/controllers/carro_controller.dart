import 'package:arq/layers/domain/entities/carro_entity.dart';
import 'package:arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:arq/layers/domain/usecases/salvar_carro_favorito_usecase/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUseCase _carrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCase;

  CarroController(
    this._carrosPorCorUseCase,
    this._salvarCarroFavoritoUseCase,
  ) {
    getCarrosPorCor('vermeho');
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor) {
    carro = _carrosPorCorUseCase(cor);
  }

  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUseCase(carro);
  }
}
