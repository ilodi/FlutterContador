import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto =
      new TextStyle(fontSize: 25, color: Color.fromRGBO(11, 48, 104, 1.0));

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('STATE'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(45, 45, 45, 1.0),
          elevation: 0,
        ),
        backgroundColor: Color.fromRGBO(223, 223, 223, 1.0),
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
        backgroundColor: Color.fromRGBO(45, 45, 45, 1.0),
        onPressed: _reset,
      ),
      Expanded(
        child: SizedBox(),
      ),
      FloatingActionButton(
        child: Icon(Icons.remove),
        backgroundColor: Color.fromRGBO(45, 45, 45, 1.0),
        onPressed: _sustraer,
      ),
      SizedBox(
        width: 5.0,
      ),
      FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(45, 45, 45, 1.0),
        onPressed: _agregar,
      ),
    ]);
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    if (_conteo >= 0) {
      setState(() => _conteo--);
    }
    {
      null;
    }
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
