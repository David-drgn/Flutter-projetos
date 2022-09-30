import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class contato extends StatefulWidget {
  const contato({Key? key}) : super(key: key);

  @override
  State<contato> createState() => _empresaState();
}

class _empresaState extends State<contato> {
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
              Image.asset("imagens/detalhe_contato.png"),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Contatos",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "atendeATM@atmconsultoria.co.br",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Telefone: (11) 9876-5431",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Celular: (11) 9876-5431",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ]),
      ),
    );
  }
}
