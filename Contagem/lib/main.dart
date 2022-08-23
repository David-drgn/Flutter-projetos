import 'package:flutter/material.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int count = 0;
  void decrement() {
    setState(() {
      count++;
    });
    print("Decrement");
  }

  void increment() {
    setState(() {
      count--;
    });

    print("Increment");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/restaurant.jpg"),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Pode entrar",
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 100.0, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: const Text(
                      "Saiu",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    )),
                const SizedBox(width: 64),
                TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: Size(100, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: const Text(
                      "Entrou",
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    )),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
