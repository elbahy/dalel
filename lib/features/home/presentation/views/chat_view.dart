import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tawk(
        directChatLink:
            'https://tawk.to/chat/6122d278d6e7610a49b170d7/1fdo0ca96',
        visitor: TawkVisitor(
          name: 'mohamed',
          email: FirebaseAuth.instance.currentUser?.email,
        ),
        onLoad: () {},
        onLinkTap: (String url) {
          if (kDebugMode) {
            print(url);
          }
        },
        placeholder: const Center(
          child: Text('Loading...'),
        ),
      ),
    );
  }
}
