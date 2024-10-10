import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/barcelona.png', width: 200, height: 200),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Correo electrónico',
                label: Text('Correo electrónico'),
                labelStyle: TextStyle(color: Colors.black),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: _email,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  label: const Text('Contraseña'),
                  labelStyle: const TextStyle(color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => _isObscure = !_isObscure),
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                  )),
              controller: _password,
              obscureText: _isObscure,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('Iniciar sesión')),
            ),
            const SizedBox(height: 16),
            Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/send_email');
                    },
                    child: const Text('Recuperar contraseña')))
          ],
        ),
      ),
    ));
  }
}
