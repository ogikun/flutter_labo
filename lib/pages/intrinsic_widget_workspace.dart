import 'package:flutter/material.dart';

const _sampleText = '高さに応じて変わってほしい';
// const _sampleText = '高\nさ\nに\n応\nじ\nて\n変\nわ\nっ\nて\nほ\nし\nい';

class IntrinsicWidgetWorkSpace extends StatelessWidget {
  const IntrinsicWidgetWorkSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IntrinsicWidget'),
      ),
      body: ListView(
        children: const [
          _WithOutIntrinsic(),
          SizedBox(height: 64),
          _WithIntrinsic(),
        ],
      ),
    );
  }
}

class _WithOutIntrinsic extends StatelessWidget {
  const _WithOutIntrinsic();

  static const itemHeight = 128.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 64,
          height: itemHeight,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 64,
              height: 64,
              color: Colors.blue,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: itemHeight,
            color: Colors.yellow,
            child: const Text(_sampleText),
          ),
        ),
        SizedBox(
          width: 64,
          height: itemHeight,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 64,
              height: 32,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}

class _WithIntrinsic extends StatelessWidget {
  const _WithIntrinsic();

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 64,
              height: 64,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: const Text(_sampleText),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 64,
              height: 32,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
