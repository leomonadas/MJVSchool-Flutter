import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const CircleAvatar(child: Text('L'),),
            const Text('Texto 01'),
            const Text('Texto 0'),
            const Text('Texto 03'),
            const Divider(), //adiciona linha
            const Row(
              children: [
                Icon(Icons.add, color: Colors.green,), //adiciona icon
                Spacer(),             //adiciona espaço
                Icon(Icons.access_alarms, color: Colors.yellow),
              ],
            ),
            Switch(value: true, onChanged: (val){}), //Esse 'onChanged: (){}' é uma função anonima! É o botão de switch
            const Card(
              child: Padding(padding: EdgeInsets.all(16), child: Text('Textinho do card!'))
            ),
          ],
        ),
      ),
    ));
  }
}

