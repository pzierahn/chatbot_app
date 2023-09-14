import 'package:braingain_app/service/supabase.dart';
import 'package:flutter/material.dart';

Future<void> showLoginDialog(BuildContext context) async {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Login'),
        content: SizedBox(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                ),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              userController.dispose();
              passwordController.dispose();
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () async {
              supabase.auth
                  .signInWithPassword(
                    email: userController.text.trim(),
                    password: passwordController.text.trim(),
                  )
                  .then((value) => debugPrint("value: ${value.user?.email}"))
                  .catchError((error) => debugPrint("error: $error"));

              Navigator.pop(context);
              userController.dispose();
              passwordController.dispose();
            },
            child: const Text('Submit'),
          ),
        ],
      );
    },
  );
}
