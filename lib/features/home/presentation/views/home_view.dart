import 'package:dalel/core/functions/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Future.delayed(const Duration(seconds: 1), () {
                  customReplacementNavigate(context, '/signin');
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
    );
  }
}
