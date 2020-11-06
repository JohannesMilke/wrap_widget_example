import 'package:flutter/material.dart';

class AreaWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Widget child;

  const AreaWidget({
    @required this.title,
    @required this.color,
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: color,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  fontSize: 28,
                ),
              ),
            ),
          ),
          child,
        ],
      );
}
