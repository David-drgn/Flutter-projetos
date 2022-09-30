import 'package:flutter/material.dart';

class Secundaria extends StatefulWidget {
  const Secundaria({Key? key}) : super(key: key);

  @override
  State<Secundaria> createState() => _SecundariaState();
}

class _SecundariaState extends State<Secundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home secundaria"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          children: [
            Text("Segunda tela"),
          ],
        ),
      ),
    );
  }
}
