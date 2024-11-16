import 'package:flutter/material.dart';

import '../commands/login_command.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;

  void _handleLoginPressed() async {
    setState(() => _isLoading = true);
    bool success = await LoginCommand().run("someuser", "somepass");
    if (!success) setState(() => {_isLoading = false});
  }

  @override
  Widget build(BuildContext context) {
    print("REBUILDING WIDGETS:");
    return Scaffold(
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : TextButton(
                child: Text("Login"),
                onPressed: _handleLoginPressed,
              ),
      ),
    );
  }
}
