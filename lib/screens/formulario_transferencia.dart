import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _screenTitle = 'Criando Transferência';
const _accountInputTitle = 'Numero da Conta';
const _accountInputHint = '0000';
const _valueInputTitle = 'Valor';
const _valueInputHint = '0.00';
const _submitButton = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _accountInputController =
  TextEditingController();
  final TextEditingController _valueInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
                inputController: _accountInputController,
                inputTitle: _accountInputTitle,
                inputHint: _accountInputHint),
            Editor(
                inputController: _valueInputController,
                inputTitle: _valueInputTitle,
                inputHint: _valueInputHint,
                inputIcon: Icons.monetization_on),
            ElevatedButton(
              child: Text(_submitButton),
              onPressed: () => _criaTransferencia(context),
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text(_screenTitle)),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int? accountNumber = int.tryParse(_accountInputController.text);
    final double? valor = double.tryParse(_valueInputController.text);

    if (accountNumber != null && valor != null) {
      final transfer = Transferencia(valor, accountNumber);
      Navigator.pop(context, transfer);
    }
  }
}