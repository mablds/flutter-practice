import 'package:flutter/material.dart';

void main() =>
    runApp(
      MaterialApp(
          theme: ThemeData(
              brightness: Brightness.dark, primaryColor: Colors.blueGrey),
          home: Scaffold(
              body: Column(
                children: [
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('100,00'),
                      subtitle: Text('20/05/2022'),
                    )
                  ),
                  Card(
                      child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100,00'),
                        subtitle: Text('20/05/2022'),
                      )
                  ),
                  Card(
                      child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('100,00'),
                        subtitle: Text('20/05/2022'),
                      )
                  ),
                ],
              ),
              appBar: AppBar(title: Text('Transferências')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    ),)
,
);
