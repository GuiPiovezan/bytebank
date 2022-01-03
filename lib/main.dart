import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criando Transferências"),
      ),
      body: Text("olá mundo"),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transferências"),
      ),
      body: Column(
        children: [
          ItemTransferencias(Transferencias(100, "2649-8")),
          ItemTransferencias(Transferencias(200, "2649-8")),
          ItemTransferencias(Transferencias(300, "2649-8")),
          ItemTransferencias(Transferencias(1500.0, "2649-8")),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

class ItemTransferencias extends StatelessWidget {
  final Transferencias _transferencias;

  ItemTransferencias(this._transferencias);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text(_transferencias.valor.toString()),
            subtitle: Text(_transferencias.numeroConta)));
  }
}

class Transferencias {
  final double valor;
  final String numeroConta;

  Transferencias(this.valor, this.numeroConta);
}
