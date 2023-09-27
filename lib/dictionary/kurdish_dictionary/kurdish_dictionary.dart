import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KurdishScreen extends ConsumerWidget {
  const KurdishScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 96,
          child: const Center(
            child: Icon(Icons.access_alarm),
          ),
        ),
      ],
    );
  }
}
