import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 20);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CONTADOR'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Clicks:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(
          child: SizedBox(
            width: 10.0,
          ),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
        SizedBox(
          width: 1.0,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
