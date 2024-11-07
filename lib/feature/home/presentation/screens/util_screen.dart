import 'package:flutter/material.dart';

class UtilScreen extends StatefulWidget {
  const UtilScreen({super.key});

  @override
  State<UtilScreen> createState() => _UtilScreenState();
}

class _UtilScreenState extends State<UtilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: Container(
        child: const Center(
          child: Text('Tiện ích'),
        ),
      ),
    );
  }
}
