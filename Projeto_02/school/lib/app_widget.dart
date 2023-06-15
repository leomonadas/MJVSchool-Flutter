import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        child: Center(
          child: CupertinoButton.filled(
            child: Text('Botão'), 
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}

