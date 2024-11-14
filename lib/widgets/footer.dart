import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.green[500]!.withOpacity(0.2), width: 1),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        '© ${DateTime.now().year} FL_DEV. All rights reserved.',
        style: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
