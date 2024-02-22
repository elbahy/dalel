import 'package:dalel/core/functions/navigation.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign in')),
      body: Center(
          child: TextButton(
              onPressed: () {
                customReplacementNavigate(context, '/signup');
              },
              child: const Text('Sign up'))),
    );
  }
}
