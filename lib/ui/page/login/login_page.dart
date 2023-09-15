import 'package:braingain_app/service/supabase.dart';
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

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
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
                decoration: const InputDecoration(
                  labelText: 'Username',
                  hintText: 'Type your email',
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Type your password',
                  prefixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () async {
                  final email = userController.text;
                  final password = passwordController.text;
                  await supabase.auth.signInWithPassword(
                    email: email,
                    password: password,
                  );
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
