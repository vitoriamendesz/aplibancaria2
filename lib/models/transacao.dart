class Transacao {
  final String descricao;
  final double valor;

  Transacao({required this.descricao, required this.valor});

  @override
  String toString() {
    return 'Descrição: $descricao, Valor: $valor';
  }
}