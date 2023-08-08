import 'package:flutter/material.dart';

class BuildScaffold extends StatelessWidget {
  const BuildScaffold({Key? key, required this.scaffold}) : super(key: key);
  final Widget scaffold;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.white.withOpacity(.93),
                  Colors.white,
                ]
            )
        ),
        child: scaffold
    );
  }
}
