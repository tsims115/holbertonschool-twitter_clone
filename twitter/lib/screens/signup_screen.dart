import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _emailController;
    _passwordController;
    _nameController;
    _confirmController;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 80),
              Center(
                child: CustomEntryField(
                  hint: 'Enter name',
                  controller: _nameController,
                ),
              ),
              Center(
                child: CustomEntryField(
                  hint: 'Enter email',
                  controller: _emailController,
                ),
              ),
              Center(
                child: CustomEntryField(
                  hint: 'Enter password',
                  controller: _passwordController,
                ),
              ),
              Center(
                child: CustomEntryField(
                  hint: 'Confirm password',
                  controller: _confirmController,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: CustomFlatButton(
                  label: 'Sign up',
                  onPressed: () {},
                  ),
              ),
              const SizedBox(height: 80),
            ]),
        ),
          )
      ),
    );
  }
}
