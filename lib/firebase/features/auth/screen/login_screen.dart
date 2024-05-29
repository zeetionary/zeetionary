import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zeetionary/constants.dart';
import 'package:zeetionary/theme/pallete.dart';
import 'package:zeetionary/firebase/core/common/loader.dart';
import 'package:zeetionary/firebase/features/auth/controller/auth_controller.dart';

// https://chatgpt.com/c/8c218fd8-e973-40f8-a703-2b22210ebb74
class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider.notifier).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'چۆنیەتیی بەکارھێنان',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: isLoading
          ? const Loader()
          : Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'یەکەم فەرھەنگی ڤیدیۆیی ئینگلیزی - کوردی',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    Constants.logo1Path,
                    height: 400,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton.icon(
                    onPressed: () => signInWithGoogle(context, ref),
                    icon: Image.asset(
                      Constants.googlePath,
                      width: 52,
                    ),
                    label: const Text(
                      'بچۆ ژوورەوە بە گووگڵ',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Pallete.greyColor,
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:zeetionary/firebase/core/common/loader.dart';
// import 'package:zeetionary/firebase/core/common/sign_in_button.dart';
// import 'package:zeetionary/constants.dart';
// import 'package:zeetionary/firebase/features/auth/controller/auth_controller.dart';

// class LoginScreen extends ConsumerWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final isLoading = ref.watch(authControllerProvider);

//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           TextButton(
//             onPressed: () {},
//             child: const Text(
//               'چۆنیەتیی بەکارھێنان',
//               style: TextStyle(
//                 color: Colors.red,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: isLoading
//           ? const Loader()
//           : Column(
//               children: [
//                 const SizedBox(height: 30),
//                 const Text(
//                   'یەکەم فەرھەنگی ڤیدیۆیی ئینگلیزی - کوردی',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Image.asset(
//                     Constants.logo1Path,
//                     height: 400,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const SignInButton(),
//               ],
//             ),
//     );
//   }
// }
