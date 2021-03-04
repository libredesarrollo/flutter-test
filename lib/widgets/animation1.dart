import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  @override
  _Animation1State createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  double opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          child: Image.asset(
            'assets/img.png',
            fit: BoxFit.fill,
          ),
          duration: Duration(seconds: 3),
          opacity: opacity,
        ),
        FlatButton(
          onPressed: _changeOpacity,
          child: Text('Animate'),
        )
      ],
    );
  }

  void _changeOpacity() {
    setState(() {
      opacity = 1.0;
    });
  }
}
