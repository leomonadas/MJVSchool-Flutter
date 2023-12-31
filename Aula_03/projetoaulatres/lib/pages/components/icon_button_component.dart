import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color? color;
  final Function()? onPressed;

  const IconButtonComponent({
    super.key,
    this.onPressed,
    this.size = 24, //O igual diz que caso não seja passado, vai ser pego esse valor
    this.icon = Icons.add,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon), 
      color: color,
      iconSize: size,
      onPressed: onPressed,
    );
  }
}