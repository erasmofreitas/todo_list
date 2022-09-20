import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
              onChanged: onChanged,
              onSubmitted: onSubmitted,
            ),
            ElevatedButton(
              onPressed: login,
              child: Text('Entrar'),
            )
          ],
        ),
      ),
    ));
  }

  void login() {
    String text = emailController.text;
    print(text);
    emailController.text = 'clicou';
  }

  void onChanged(String text) {
    //print(text);
  }

  void onSubmitted(String text) {
    print(text);
  }
}
