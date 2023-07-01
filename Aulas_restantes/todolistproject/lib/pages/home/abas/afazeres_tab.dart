import 'package:flutter/material.dart';
import 'package:todolistproject/pages/components/spacer_component.dart';

class AfazeresTab extends StatefulWidget {
  final int valorInicial;
  final void Function(int tabIndex)? callback;

  const AfazeresTab({super.key, required this.valorInicial, this.callback});

  @override 
  State createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late int acc;

void somarMaisUm(){
 setState(() {
    acc++;
  });
}

void handleCallback() {
  if(widget.callback != null){
    widget.callback!(1);
  }
}

@override
void initState(){
  acc = widget.valorInicial;
  super.initState();
}
// Função assincrona
  // buscarDados() async {
    // await something 
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$acc'),
        const SpacerComponent(),
        ElevatedButton(
          onPressed: handleCallback, 
          child: const Text('callback'),
          )
      ],
    );
  }
}