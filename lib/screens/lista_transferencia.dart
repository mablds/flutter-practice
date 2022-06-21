import 'package:bytebank/models/transferencia.dart';
import 'package:bytebank/screens/formulario_transferencia.dart';
import 'package:flutter/material.dart';

final String screen_title = 'Lista de Transferências';

class TransfersList extends StatefulWidget {
  final List<Transferencia> transfers = [];

  @override
  State<StatefulWidget> createState() {
    return TransfersListState();
  }
}

class TransfersListState extends State<TransfersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.transfers.length,
          itemBuilder: (context, index) {
            final transfer = widget.transfers[index];
            return TransferItem(transfer);
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Future<Transferencia?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return FormularioTransferencia();
              },
            ),
          );

          future.then((transferReceived) {
            setState(() {
              debugPrint(transferReceived.toString());
              if (transferReceived != null) {
                widget.transfers.add(transferReceived);
              }
            });
          });
        },
      ),
      appBar: AppBar(title: Text(screen_title)),
    );
  }
}

class TransferItem extends StatelessWidget {
  final Transferencia _transfer;

  const TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(_transfer.value.toString()),
      subtitle: Text('Conta: ' + _transfer.account.toString()),
    ));
  }
}
