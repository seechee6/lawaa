import 'package:flutter/material.dart';
import 'package:lawaa/log.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: BackButton(color: Colors.grey[850]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  const EdgeInsets.fromLTRB(25,25,25,0),
                child: Text(
                  'Daftar Akaun Anda',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,
                  color: Colors.grey[850]),
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink.shade50),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          fillColor: Colors.pink.shade50,
                          filled: true,
                          prefixIcon: const Icon(Icons.person_2_rounded),
                          prefixIconColor: Colors.black,
                          hintText: 'Masukkan nama anda',
                          hintStyle: TextStyle(color: Colors.grey[600])),
                    ),
                    const SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink.shade50),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          fillColor: Colors.pink.shade50,
                          filled: true,
                          prefixIcon: const Icon(Icons.person_2_rounded),
                          prefixIconColor: Colors.black,
                          hintText: 'Masukkan nama pengguna',
                          hintStyle: TextStyle(color: Colors.grey[600])),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink.shade50),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          fillColor: Colors.pink.shade50,
                          filled: true,
                          prefixIcon: const Icon(Icons.email_rounded),
                          prefixIconColor: Colors.black,
                          hintText: 'Masukkan e-mel anda',
                          hintStyle: TextStyle(color: Colors.grey[600])),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink.shade50),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          fillColor: Colors.pink.shade50,
                          filled: true,
                          prefixIcon: const Icon(Icons.lock),
                          prefixIconColor: Colors.black,
                          hintText: 'Masukkan kata laluan',
                          hintStyle: TextStyle(color: Colors.grey[600])),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink.shade50),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          fillColor: Colors.pink.shade50,
                          filled: true,
                          prefixIcon: const Icon(Icons.lock),
                          prefixIconColor: Colors.black,
                          hintText: 'Sahkan kata laluan',
                          hintStyle: TextStyle(color: Colors.grey[600])),
                    ),
                     const SizedBox(
                          height: 25.0,
                        ),
                    ElevatedButton(
                        
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                            fixedSize:const Size(340, 45),
                            backgroundColor: Colors.red[300]),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                            return const LogPage();
                          }));
                        },
                        child: Text(
                          'Daftar',
                          style: TextStyle(color: Colors.grey[200],fontSize: 18),
                        )),
                        Image.asset("lib/images/ikon logo.png",width: 180,height: 180,),
            ],
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
