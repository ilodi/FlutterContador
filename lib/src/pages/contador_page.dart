import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('STATE'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de taps:',
                style: _estiloTexto,
              ),
              Text(
                _conteo.toString(),
                style: _estiloTexto,
              )
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
       SizedBox(
        width: 30,
      ),
      FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        onPressed: null,
      ),
      Expanded(
        child: SizedBox(
         
        ),
      ),
      FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: null,
      ),
      SizedBox(
        width: 5.0,
      ),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    ]);
  }
}
