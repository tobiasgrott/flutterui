import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) => SignInScreen(
          headerBuilder: (
            context,
            constraints,
            _,
          ) =>
              Padding(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                'https://firebase.flutter.dev/img/flutterfire_300x.png',
              ),
            ),
          ),
          subtitleBuilder: (
            context,
            action,
          ) =>
              Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              action == AuthAction.signIn
                  ? 'Welcome to FlutterFire UI! Please sign in to continue.'
                  : 'Welcome to FlutterFire UI! Please create an account to continue',
            ),
          ),
          footerBuilder: (context, _) => const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'By signing in, you agree to our terms and conditions.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          sideBuilder: (context, constraints) => Padding(
            padding: const EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                'https://firebase.flutter.dev/img/flutterfire_300x.png',
              ),
            ),
          ),
          providerConfigs: [
            EmailProviderConfiguration(),
            GoogleProviderConfiguration(
              clientId:
                  '553589881293-oinasb68ualq6di7s68ph5t9e6fj729p.apps.googleusercontent.com',
            ),
          ],
        ),
      );
}
