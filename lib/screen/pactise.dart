import 'package:flutter/material.dart';

 class Homem extends StatelessWidget{
  const Homem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "This is a child widget",
        
        ),
          key: super.key,
      ),
    );
  }
 
}