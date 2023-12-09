import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  static const route = 'login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    const prefixConstraints = BoxConstraints.tightFor(width: 56);

    return Scaffold(
      body: ConstrainedListView(
        padding: const EdgeInsets.all(8),
        maxWidth: 500,
        children: [
          const SizedBox(height: 100),
          Text(
            'Braingain',
            style: text.displaySmall?.merge(
              const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          UnDraw(
            illustration: UnDrawIllustration.forgot_password,
            // illustration: UnDrawIllustration.fingerprint,
            color: color.primary,
            width: 200,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: userController,
            autofillHints: const [
              AutofillHints.email,
            ],
            decoration: const InputDecoration(
              labelText: 'Username',
              hintText: 'Type your email',
              prefixIcon: Icon(Icons.person_outline),
              prefixIconConstraints: prefixConstraints,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: passwordController,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            autofillHints: const [
              AutofillHints.password,
            ],
            decoration: const InputDecoration(
              labelText: 'Password',
              hintText: 'Type your password',
              prefixIcon: Icon(Icons.lock_outline),
              prefixIconConstraints: prefixConstraints,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () async {
              final email = userController.text;
              final password = passwordController.text;
              await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: email,
                password: password,
              );
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
