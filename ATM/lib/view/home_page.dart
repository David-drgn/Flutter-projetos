import 'package:flutter/material.dart';
import 'package:navegacao/view/abre_empresa.dart';
import 'package:navegacao/view/abre_empresa.dart';
import 'package:navegacao/view/abre_Cliente.dart';
import 'package:navegacao/view/abre_contato.dart';
import 'package:navegacao/view/abre_servico.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => empresa()));
  }

  void _abrirCliente() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => cliente()));
  }

  void _abrirContato() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => contato()));
  }

  void _abrirServico() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => servico()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Atm Consultoria"),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.blue,
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            Image.asset("imagens/logo.png"),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirEmpresa,
                  child: Image.asset("imagens/menu_empresa.png"),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                GestureDetector(
                  onTap: _abrirServico,
                  child: Image.asset("imagens/menu_servico.png"),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: _abrirCliente,
                  child: Image.asset("imagens/menu_cliente.png"),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                GestureDetector(
                  onTap: _abrirContato,
                  child: Image.asset("imagens/menu_contato.png"),
                ),
              ],
            )
          ]),
        ));
  }
}
