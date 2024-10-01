import 'package:ppdm_02/models/conta.dart';
import 'package:ppdm_02/services/banco_service.dart';

void main() {
  Conta minhaConta = Conta(titular: 'João Silva', saldo: 100.0);
  BancoService bancoService = BancoService(minhaConta);

  print('Saldo inicial: ${minhaConta.saldo}');

  bancoService.depositar(50.0);
  print('Saldo após depósito: ${minhaConta.saldo}');

  bancoService.sacar(20.0);
  print('Saldo após saque: ${minhaConta.saldo}');

  bancoService.obterHistoricoTransacoes().forEach((transacao) {
    print(transacao);
  });
}
