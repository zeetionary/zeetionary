import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textSizeProvider = Provider.of<TextSizeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Text Size',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Slider(
              value: textSizeProvider.textSize,
              min: 10,
              max: 30,
              onChanged: (newValue) {
                textSizeProvider.updateTextSize(newValue);
              },
            ),
            const SizedBox(height: 40),
            Text(
              'Current Text Size: ${textSizeProvider.textSize.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class TextSizeProvider with ChangeNotifier {
  double _textSize = 16;

  double get textSize => _textSize;

  void updateTextSize(double newTextSize) {
    _textSize = newTextSize;
    notifyListeners();
  }
}
