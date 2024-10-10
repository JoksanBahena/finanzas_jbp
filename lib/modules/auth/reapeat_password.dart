import 'package:flutter/material.dart';

class ReapeatPassword extends StatefulWidget {
  const ReapeatPassword({super.key});

  @override
  State<ReapeatPassword> createState() => _ReapeatPasswordState();
}



class _ReapeatPasswordState extends State<ReapeatPassword> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _password2 = TextEditingController();
  bool _isObscure = true;
  bool _isObscure2 = true;

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
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'Repetir contraseña',
                  label: const Text('Repetir contraseña'),
                  labelStyle: const TextStyle(color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => _isObscure2 = !_isObscure2),
                    icon: Icon(
                        _isObscure2 ? Icons.visibility : Icons.visibility_off),
                  )),
              controller: _password2,
              obscureText: _isObscure2,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('Guardar')),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    ));
  }
}
