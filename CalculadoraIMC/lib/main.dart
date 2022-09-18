import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();

  String info = "";
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void resetCampos() {
    peso.text = "";
    altura.text = "";
    setState(() {
      info = "Informe seus dados";
    });
  }

  void calcular() {
    setState(() {
      double pesoDigitado = double.parse(peso.text);
      double alturaDigitado = double.parse(altura.text) / 100;
      double IMC = pesoDigitado / (alturaDigitado * alturaDigitado);

      if (IMC < 18.5) {
        info = "Abaixo do peso (${IMC.toStringAsPrecision(3)})";
      } else if (IMC >= 18.5 && IMC <= 24.9) {
        info = "Peso normal(${IMC.toStringAsPrecision(3)})";
      } else if (IMC >= 25.0 && IMC <= 29.9) {
        info = "Sobrepeso(${IMC.toStringAsPrecision(3)})";
      } else if (IMC >= 30.0 && IMC <= 34.9) {
        info = "Obesidade grau 1 (${IMC.toStringAsPrecision(3)})";
      } else {
        info = "Obesidade grau 2 (${IMC.toStringAsPrecision(3)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora IMC"),
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: resetCampos, icon: Icon(Icons.refresh))
          ],
        ),
        backgroundColor: Colors.white,
        body: Form(
          key: formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.green,
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso (Kg)",
                    labelStyle: TextStyle(color: Colors.green)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0),
                controller: peso,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Insira seu peso";
                  }
                }),
            TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura (cm)",
                    labelStyle: TextStyle(color: Colors.green)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.green, fontSize: 25.0),
                controller: altura,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Insira sua altura";
                  }
                }),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: const Text("Calcular",
                  style: TextStyle(color: Colors.white, fontSize: 25.0)),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  calcular();
                }
              },
            ),
            SizedBox(height: 20),
            Text(info,
                textAlign: TextAlign.center, style: TextStyle(fontSize: 25.0)),
          ]),
        ));
  }
}
