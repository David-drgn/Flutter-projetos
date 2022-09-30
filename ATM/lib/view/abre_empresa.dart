import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class empresa extends StatefulWidget {
  const empresa({Key? key}) : super(key: key);

  @override
  State<empresa> createState() => _empresaState();
}

class _empresaState extends State<empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Empresa"),
      ),
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("imagens/detalhe_empresa.png"),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Sobre a empresa",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepOrange,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Vivamus congue dictum sapien vel dictum. In pretium posuere sollicitudin. Nunc ac ligula mauris. Suspendisse efficitur iaculis lacinia. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu eros turpis. Suspendisse mauris ex, laoreet quis metus at, imperdiet tincidunt magna. Quisque auctor tellus in arcu laoreet, quis accumsan enim varius. In eu iaculis turpis. Mauris sit amet ligula eget quam tempus mollis. Integer eget urna faucibus, lobortis tortor et, sodales mi. Nullam ullamcorper imperdiet massa, ac cursus dui dapibus non. Maecenas nisl lectus, interdum vel dapibus sit amet, varius non augue. Sed metus quam, convallis et eros a, interdum faucibus ex. Donec finibus metus ut mi lobortis rhoncus in auctor dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris ultrices odio non ante porta, non fringilla velit tempus.",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      )),
    );
  }
}
