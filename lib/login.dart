import 'package:flutter/material.dart';
import 'package:lawaa/register.dart';
import 'log.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(40.0, 300.0, 25.0, 30.0),
                child: Text(
                  'IKON',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 55,
                      color: Colors.pinkAccent),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent[100],
                      fixedSize: const Size.fromWidth(300.0)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const RegisterPage();
                      }),
                    );
                  },
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 20.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[50],
                      fixedSize: const Size.fromWidth(300.0)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return const LogPage();
                      }),
                    );
                  },
                  child: const Text('Log masuk',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0)),
                ),
              ),
            const SizedBox(height: 135),
            
             Image.asset("lib/images/ikon logo.png",width: 180,height: 180,),
            ],
            
          ),
        ),
      );
    
  }
}
