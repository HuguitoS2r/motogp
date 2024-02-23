import 'package:flutter/material.dart';

class Infotittle extends StatelessWidget {
  const Infotittle({super.key, required this.title, required this.subtittle});

  final String title;
  final String subtittle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subtittle,
          style: const TextStyle(color: Colors.white70),
        )
      ],
    );
  }
}
