import 'package:flutter/material.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/widgets/side_bar_menu.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  State<SignIn> createState() => SignInState();
}

class SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _emailController;
    _passwordController;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView (
        child: Column(
        children: [
          const SizedBox(height: 80),
          Center(
            child: CustomEntryField(
              hint: 'Enter your email',
              controller: _emailController,
            ),
          ),
          Center(
            child: CustomEntryField(
              hint: 'Enter your password',
              controller: _passwordController,
              isPassword: true,
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: CustomFlatButton(
              label: 'Submit',
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen())
                )
              },
            ),
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp())
              );
            },
            child: const Text(
              'Sign up',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600
              ),
            )
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ForgotPassword())
              );
            },
            child: const Text(
              'Forgot Password',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600
              ),
            )
          ),
          const SizedBox(height: 80),
        ],
      )
      ),
    );
  }
}
