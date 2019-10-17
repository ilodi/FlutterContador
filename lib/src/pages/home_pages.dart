import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
//Estilo propio
  final estiloTexto = new TextStyle(fontSize: 27);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de tabs:',
              style: estiloTexto,
            ),
            Text(
              '0',
              style: estiloTexto,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 1.0,
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo');
        },
      ),
    );
  }
}
