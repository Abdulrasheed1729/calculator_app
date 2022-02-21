import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResultBox extends StatefulWidget {
  ResultBox({
    Key? key,
    required this.result,
    required this.input,
  }) : super(key: key);
  String result = '0';
  String input = '';

  @override
  State<ResultBox> createState() => _ResultBoxState();
}

class _ResultBoxState extends State<ResultBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildInputBox(),
        _buildResultBox(),
      ],
    );
  }

  Widget _buildInputBox() {
    return Container(
      margin: const EdgeInsets.only(right: 10.0, top: 10.0),
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(20),
      child: Text(
        widget.input,
        style: const TextStyle(
          fontSize: 25.0,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildResultBox() {
    return Container(
      margin: const EdgeInsets.only(right: 10.0, top: 10.0),
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(20),
      child: Text(
        widget.result.toString(),
        style: const TextStyle(
          fontSize: 25.0,
          color: Color(0xFF55B562),
        ),
      ),
    );
  }
}
