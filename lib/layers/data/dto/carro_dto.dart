import 'package:arq/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  final String placa;
  final int quantidadeDePortas;
  final double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          placa: placa,
          qtdPortas: quantidadeDePortas,
          valor: valorFinal,
        );

  Map toMap() {
    return {
      'placa': placa,
      'quantidade_de_portas': qtdPortas,
      'valor_final': valorFinal,
    };
  }

  static fromMap(Map map) {
    return CarroDto(
      placa: map['placa'],
      quantidadeDePortas: map['quantidade_de_portas'],
      valorFinal: map['valor_final'],
    );
  }
}
