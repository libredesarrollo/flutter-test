import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  @override
  _Animation2State createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {
  var imgHeight = 100.0;
  var imgWidth = 100.0;
  var backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          height: imgHeight,
          width: imgWidth,
          color: backgroundColor,
          child: Image.asset('assets/img.png', fit: BoxFit.fill),
          duration: Duration(seconds: 3),
        ),
        FlatButton(
          onPressed: _changeValues,
          child: Text('Animate'),
        )
      ],
    );
  }

  void _changeValues() {
    setState(() {
      // new values to interpolate
      imgWidth = 300;
      imgHeight = 300;
      backgroundColor = Colors.deepPurpleAccent;
    });
  }
}
