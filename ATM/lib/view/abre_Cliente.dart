import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class cliente extends StatefulWidget {
  const cliente({Key? key}) : super(key: key);

  @override
  State<cliente> createState() => _empresaState();
}

class _empresaState extends State<cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cliente"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Image.asset("imagens/detalhe_cliente.png"),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Clientes",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Empresa de Software",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Netflix",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "T-System",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ]),
      ),
    );
  }
}
