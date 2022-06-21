class Transferencia {
  final double value;
  final int account;

  Transferencia(this.value, this.account);

  @override
  String toString() {
    return 'Transferencia{valor: $value, conta: $account}';
  }
}