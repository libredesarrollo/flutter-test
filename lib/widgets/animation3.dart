import 'package:flutter/material.dart';

class Animation3 extends StatefulWidget {
  @override
  _Animation3State createState() => _Animation3State();
}

class _Animation3State extends State<Animation3> {
  var imgHeight = 100.0;
  var imgWidth = 100.0;
  var backgroundColor = Colors.white;
  var borderRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          height: imgHeight,
          width: imgWidth,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
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
      borderRadius = 150.0;
      backgroundColor = Colors.deepPurple;
    });
  }
}
