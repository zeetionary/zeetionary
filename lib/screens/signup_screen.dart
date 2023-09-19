import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:zeetionary/resources/auth_methods.dart';
import 'package:zeetionary/responsive/mobile_screen_layout.dart';
import 'package:zeetionary/responsive/responsive_layout.dart';
import 'package:zeetionary/screens/login_screen.dart';
import 'package:zeetionary/utils/colors.dart';
// import 'package:zeetionary/utils/utils.dart';
import 'package:zeetionary/widgets/text_field_input.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  

  @override
  void dispose() {*
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();_usernameController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2,),
              // svg image
              SvgPicture.asset(
                'assets/zeetionary.svg',
                color: primaryColor,
                height: 64,
              ),
              const SizedBox(height: 64,),
              //circular widget
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.svgrepo.com%2Fsvg%2F309519%2Fdictionary&psig=AOvVaw2XWQ2_WC0rbQUMo81kGu8l&ust=1695192565915000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCLjM49KEtoEDFQAAAAAdAAAAABAF'),
                  ),
                  Positioned
                    bottom: -10,
                    left: 80,
                    (child: IconButton(
                      //onPressed 
                      icon: const Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              //text field input for username
              TextFieldInput(
                hinText: 'Enter your username',
                textInputType: TextInputType.text,
                textEditingController; _usernameController,
              ),
              const SizedBox(height: 24,),
              // text field input for eeail
              TextFieldInput(
                hinText: 'Enter your email',
                textInputType: TextInputType.emailAddress,
                textEditingController; _emailController,
              ),
              const SizedBox(
                height: 24,
              ),
              // text field input for password
              TextFieldInput(
                hinText: 'Enter your email',
                textInputType: TextInputType.text,
                textEditingController; _passwordController,
                isPass: true,
              ),
              const SizedBox(
                height: 24,
              ),
               // text field input for username
              TextFieldInput(
                hinText: 'Enter your bio',
                textInputType: TextInputType.text,
                textEditingController; _usernameController,
              ),
              const SizedBox(height: 24,),
              // button for login
              InkWell(
                onTap: onTap: () async { 
                  String res = await AuthMethods().signUpUser(
                    email: _emailController.text, 
                    password: _passwordController.text:,
                    usernameController.text,
                    bio: _bioController.text,
                  );
                  print(res);
                },
                child: Container(
                  child: const Text('Log in'),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    color: blueColor
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Flexible(child: Container(), flex: 2,),

              // transitioning to sign up
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Do not have an account?"),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,),
                    ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                    },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
