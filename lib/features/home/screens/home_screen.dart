import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/features/home/drawers/community_list_drawer.dart';
// import 'package:zeetionary/features/auth/controller/auth_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final user = ref.watch(userProvider)!;

    return Scaffold(
      appBar: AppBar(
        title: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [
                Colors.blue,
                Color.fromARGB(255, 0, 0, 0)
              ], // Define your gradient colors here
              tileMode: TileMode.clamp,
            ).createShader(bounds);
          },
          child: const Text(
            'Zeetionary',
            style: TextStyle(
              fontSize: 24.0, // Adjust font size as needed
              fontWeight: FontWeight.bold, // Adjust font weight as needed
              color:
                  Colors.white, // Text color (will be masked by the gradient)
            ),
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => displayDrawer(context),
          );
        }),
      ),
      drawer: const CommunityListDrawer(),
    );
  }
}
