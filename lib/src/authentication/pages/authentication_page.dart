import 'package:firebase_auth/firebase_auth.dart' // new
    hide
        EmailAuthProvider,
        PhoneAuthProvider;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 8),
        child: OutlinedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Text('Logout')),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 8),
        child: OutlinedButton(
            onPressed: () {
              context.push('/profile');
            },
            child: const Text('Profile')),
      ),
    ]);
  }
}
