import 'package:flutter/material.dart';

class GloabalLoading extends StatelessWidget {
  const GloabalLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 24,
        width: 24,
        child: Center(
          child: CircularProgressIndicator()));
  }
}