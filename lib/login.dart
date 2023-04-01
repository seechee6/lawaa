import 'package:flutter/material.dart';
import 'package:lawaa/register.dart';
import 'log.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(40.0, 100.0, 25.0, 180.0),
            child: Text(
              'LAWAA',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
            ),
          ),
          Center(
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                
                backgroundColor: Colors.red[600]
                ,fixedSize: const Size.fromWidth(300.0)
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const RegisterPage();
                  }),
                );
              },
              child: const Text('Register',style: TextStyle(color: Colors.black
              ,fontWeight: FontWeight.bold,fontSize: 20.0),),
            ),
          ),
          const SizedBox(height: 15.0,),
          Center(
            child: ElevatedButton(
              
                style: ElevatedButton.styleFrom(
                  
                  backgroundColor: Colors.red[50]
                  ,fixedSize: const Size.fromWidth(300.0)
                ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const LogPage();
                  }),
                );
              },
              child: const Text('Log in',style: TextStyle(color: Colors.black
              ,fontWeight: FontWeight.bold,fontSize: 20.0)),
            ),
          ),
        ],
      ),
    );
  }
}
