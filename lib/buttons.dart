import 'package:calculator/calculator_keys.dart';
import 'package:flutter/material.dart';

class BuildCircularButton extends StatelessWidget {
  const BuildCircularButton(
      {Key? key, required this.label, required this.labelColor, required this.onTap})
      : super(key: key);
  final String label;
  
  final Color labelColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      constraints: const BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      fillColor: isOperator(label) ? const Color(0xFF55B562) : Colors.white,
      shape: const CircleBorder(),
      disabledElevation: 6.0,
      elevation: 6.0,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20.0,
          color: labelColor,
        ),
      ),
    );
  }
}

class EqualSignButton extends StatelessWidget {
  const EqualSignButton({ Key? key, required this.onPressed }) : super(key: key);
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        height: 50.0,
        width: 120.0,
      ),
      fillColor: const Color(0xFF55B562),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
      disabledElevation: 6.0,
      elevation: 6.0,
      child:const Text(
        '=',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
