import 'package:flutter_test/flutter_test.dart';
import 'package:ppdm_02/models/conta.dart';
import 'package:ppdm_02/services/banco_service.dart';

void main() {
  group('Teste do Banco', () {
    test('Depósito deve aumentar o saldo da conta', () {
      var conta = Conta(titular: 'Teste', saldo: 100.0);
      var servico = BancoService(conta);

      servico.depositar(50.0);
      expect(conta.saldo, 150.0);
    });

    test('Saque deve diminuir o saldo da conta', () {
      var conta = Conta(titular: 'Teste', saldo: 100.0);
      var servico = BancoService(conta);

      servico.sacar(40.0);
      expect(conta.saldo, 60.0);
    });

    test('Histórico de transações deve conter o depósito e o saque', () {
      var conta = Conta(titular: 'Teste', saldo: 100.0);
      var servico = BancoService(conta);

      servico.depositar(50.0);
      servico.sacar(20.0);

      var transacoes = servico.obterHistoricoTransacoes();
      expect(transacoes.length, 2);
      expect(transacoes[0].descricao, 'Depósito');
      expect(transacoes[1].descricao, 'Saque');
    });
  });
}
