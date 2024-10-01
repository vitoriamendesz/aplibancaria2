class Conta {
  final String titular;
  double saldo;

  Conta({required this.titular, required this.saldo});

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    saldo -= valor;
  }

  @override
  String toString() {
    return 'Conta: $titular, Saldo: $saldo';
  }
}