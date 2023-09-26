import 'package:flutter/material.dart';

class EnglishEntryLion extends StatelessWidget {
  const EnglishEntryLion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Entry: Lion'),
      ),
      body: const Center(
        child: Text('This is the Lion entry page.'),
      ),
    );
  }
}
