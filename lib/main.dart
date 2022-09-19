import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Itens(
              itens: ["Double Vegan", "Bata Frita", "Refrigerante"],
            ),
            Itens(
              itens: ["Pomba", "Batata", "Refrigerante"],
            ),
            Itens(
              itens: ["Double Vegan", "Bata Frita", "Refrigerante"],
            ),
            Itens(
              itens: ["Double Vegan", "Bata Frita", "Refrigerante"],
            ),
            Itens(
              itens: ["Double Vegan", "Bata Frita", "Refrigerante"],
            ),
          ],
        ),
      ),
    );
  }
}

class Itens extends StatelessWidget {
  final List<String> itens;
  const Itens({
    super.key,
    required this.itens,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161,
      width: 611,
      color: const Color(0xFFD9D9D9),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                height: 45,
                margin: const EdgeInsets.all(5),
                color: const Color(0xFFEB5757),
              ),
              Column(
                children: [
                  const Text("Item"),
                  for (int i = 0; i < itens.length; i++) Text(itens[i])
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
