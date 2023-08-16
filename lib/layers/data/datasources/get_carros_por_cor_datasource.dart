import 'package:arq/layers/data/dto/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {
  CarroDto call(String cor);
}
