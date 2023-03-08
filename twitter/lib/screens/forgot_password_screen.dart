import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({ Key? key }) : super(key: key);

  @override
  State<ForgotPassword> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _emailController;
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView (
        child: Column(
        children: [
          const SizedBox(height: 120),
          const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600
              ),
            ),
          Text(
              'Enter your email address below to recieve password reset instructions',
              style: TextStyle(
                color: Colors.grey[400]
                
              ),
              softWrap: true,
            ),
          Center(
            child: CustomEntryField(
              hint: 'Enter email',
              controller: _emailController,
            ),
          ),
          Center(
            child: CustomFlatButton(
              label: 'Submit',
              onPressed: () => {},
            ),
          ),
          const SizedBox(height: 150),
        ],
      )
      ),
    );
  }
}
