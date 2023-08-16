import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../dto/carro_dto.dart';

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
