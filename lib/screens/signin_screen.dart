import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSigendIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sign In"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // nama pengguna
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: "Nama Pengguna",
                      hintText: "Masukkan nama pengguna",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  // kata sandi
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                        labelText: "Kata Sandi",
                        hintText: "Masukkan kata sandi",
                        border: const OutlineInputBorder(),
                        errorText: _errorText.isNotEmpty ? _errorText : null,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            icon: Icon(_obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility))),
                    obscureText: _obscurePassword,
                  ),
                  // sign in
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Sign In")),
                  //sign up
                  const SizedBox(
                    height: 10,
                  ),
                  // TextButton(
                  //     onPressed: () {},
                  //     child: Text("Belum punya akun? Daftar di sini."))
                  RichText(
                      text: TextSpan(
                          text: "Belum punya akun?",
                          style: const TextStyle(
                              fontSize: 16, color: Colors.deepPurple),
                          children: [
                        TextSpan(
                            text: "Daftar di sini.",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {})
                      ]))
                ],
              )),
            ),
          ),
        ));
  }
}
