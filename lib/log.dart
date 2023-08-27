import 'package:flutter/material.dart';
import 'package:lawaa/forgetpass.dart';

import 'home.dart';

class LogPage extends StatelessWidget {
  const LogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          leading: BackButton(color: Colors.grey[850]),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Log Masuk ke Akaun Anda',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade50),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        filled: true,
                        fillColor: Colors.pink.shade50,
                        prefixIcon: const Icon(Icons.email_rounded),
                        prefixIconColor: Colors.black,
                        hintText: 'Masukkan e-mel anda'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.pink.shade50,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink.shade50),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      prefixIconColor: Colors.black,
                      hintText: 'Masukkan kata laluan',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        fixedSize: const Size(340, 45),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const HomePage();
                        }));
                      },
                      child: Text(
                        'Log masuk',
                        style: TextStyle(color: Colors.grey[200], fontSize: 18),
                      )),
                  const SizedBox(height: 15),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return const ForgetPassword();
                        }));
                      },
                      child: const Text(
                        'Lupa kata laluan?',
                        style: TextStyle(
                            color: Colors.cyan,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 15),
                      )),
                  const SizedBox(height: 160),
                  Image.asset(
                    "lib/images/ikon logo.png",
                    width: 180,
                    height: 180,
                  ),
                ]),
          ),
        ));
  }
}
