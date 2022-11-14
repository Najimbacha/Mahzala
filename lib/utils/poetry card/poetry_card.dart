import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PoetryCard extends StatelessWidget {
  final String text;

  const PoetryCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 22, fontFamily: 'pashtofont'),
        ),
      ),
    );
  }
}
