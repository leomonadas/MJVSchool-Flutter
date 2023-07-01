import 'package:flutter/material.dart';
import 'package:todolistproject/pages/components/app_bar_component.dart';
import 'package:todolistproject/pages/home/abas/perfil_tab.dart';
import 'package:todolistproject/pages/home/abas/afazeres_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override 
  State createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  late int abaSelec;

  
  final List<BottomNavigationBarItem> _abas = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Perfil'),
  ];

  final List<Widget> _conteudos = [
    AfazeresTab(
      valorInicial: 5, 
      callback: (tabIndex) {
        print(tabIndex);
      },
    ),
    const PerfilTab(),
  ];
    
  void handleTab(int tabIndex){
    setState(() {
      abaSelec = tabIndex;
    });
  }

  @override
  void initState(){
    abaSelec = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const AppBarcomponent(),
      body: _conteudos.elementAt(abaSelec),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: abaSelec,
        items: _abas,
        onTap: handleTab,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){

      },
      child: const Icon(Icons.add),
      ),
    );
  }
}