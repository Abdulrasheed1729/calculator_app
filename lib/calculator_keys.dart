import 'package:calculator/result_box.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'buttons.dart';

class CalculatorKeys extends StatefulWidget {
  const CalculatorKeys({
    Key? key,
  }) : super(key: key);

  @override
  State<CalculatorKeys> createState() => _CalculatorKeysState();
}

class _CalculatorKeysState extends State<CalculatorKeys> {
  String input = '';

  String result = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      color: const Color(0xFF4F5463),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ResultBox(
                result: result,
                input: input,
              ),
              flex: 3,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BuildCircularButton(
                    label: '+',
                    labelColor: Colors.white,
                    onTap: () {
                      setState(() {
                        input += '+';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '-',
                    labelColor: Colors.white,
                    onTap: () {
                      setState(() {
                        input += '-';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '×',
                    labelColor: Colors.white,
                    onTap: () {
                      setState(() {
                        input += '×';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '÷',
                    labelColor: Colors.white,
                    onTap: () {
                      setState(() {
                        input += '/';
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BuildCircularButton(
                    label: '7',
                    labelColor: const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '7';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '8',
                    labelColor: const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '8';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '9',
                    labelColor:const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '9';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: 'C',
                    labelColor: Colors.white,
                    onTap: () {
                      setState(() {
                        input = '';
                        result = '0';
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BuildCircularButton(
                    label: '4',
                    labelColor:const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '4';
                      });
                    },
                  ),
                 const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '5',
                    labelColor:const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '5';
                      });
                    },
                  ),
                 const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '6',
                    labelColor:const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '6';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '☒',
                    labelColor: Colors.white,
                    onTap: () {
                      setState(() {
                        input = input.substring(0, input.length - 1);
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BuildCircularButton(
                    label: '1',
                    labelColor: const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '1';
                      });
                    },
                  ),
                 const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '2',
                    labelColor:const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '2';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '3',
                    labelColor:const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input += '3';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '%',
                    labelColor: Colors.white,
                    onTap: () {
                      setState(() {
                        input += '%';
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BuildCircularButton(
                    label: '0',
                    labelColor: const Color(0xFF4F5463),
                    onTap: () {
                      setState(() {
                        input = '0';
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  BuildCircularButton(
                    label: '.',
                    labelColor:const Color(0xFF4F5463),
                    onTap: () {},
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  EqualSignButton(
                    onPressed: equalSignPressed,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }

  void equalSignPressed() {
    setState(() {
      String lastInput = input;
      lastInput = input.replaceAll('×', '*');
      Parser value = Parser();
      Expression exp = value.parse(lastInput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      result = eval.toString();

    });
  }
}

bool isOperator(String input) {
  if (input == "=" ||
      input == "+" ||
      input == "-" ||
      input == "÷" ||
      input == "%" ||
      input == "☒" ||
      input == "×" ||
      input == "C") {
    return true;
  } else {
    return false;
  }
}
