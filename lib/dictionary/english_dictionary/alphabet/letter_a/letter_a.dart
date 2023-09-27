import 'package:flutter/material.dart';

class EnglishEntryAardvark extends StatelessWidget {
  const EnglishEntryAardvark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aardvark'),
        ),
        body: const Center(
          child: Text(
              'A large, nocturnal, burrowing mammal native to central and southern Africa, with a long, extensile tongue and strong claws, which feeds on ants and termites.'),
        ),
      ),
    );
  }
}
