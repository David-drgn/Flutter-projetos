import 'package:flutter/material.dart';
import 'package:navegacao/view/secundario.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Secundaria()));
                },
                child: Text("Ir para a segunda tela")),
          ],
        ),
      ),
    );
  }
}
