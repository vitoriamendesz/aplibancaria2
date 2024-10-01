import '../models/conta.dart';
import '../models/transacao.dart';

class BancoService {
  late final Conta conta;
  List<Transacao> transacoes = [];

  BancoService(this.conta);

  void depositar(double valor) {
    conta.depositar(valor);
    transacoes.add(Transacao(descricao: 'Depósito', valor: valor));
  }

  void sacar(double valor) {
    conta.sacar(valor);
    transacoes.add(Transacao(descricao: 'Saque', valor: valor));
  }

  List<Transacao> obterHistoricoTransacoes() {
    return transacoes;
  }
}