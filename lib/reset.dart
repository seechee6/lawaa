import 'package:flutter/material.dart';
import 'package:lawaa/log.dart';

class Resetpage extends StatefulWidget {
  const Resetpage({super.key});

  @override
  State<Resetpage> createState() => _ResetpageState();
}

class _ResetpageState extends State<Resetpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: BackButton(color: Colors.grey[850]),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Cipta kata laluan baharu ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.grey[850]),
                  ),
                  const SizedBox(height: 40),
                  Image.asset("lib/images/reset.png", width: 120, height: 120),
                  const SizedBox(
                    height: 50,
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
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        prefixIconColor: Colors.black,
                        hintText: 'Masukkan kata laluan baharu',
                        hintStyle: TextStyle(color: Colors.grey[600])),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.pink.shade50),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        fillColor: Colors.pink.shade50,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        prefixIconColor: Colors.black,
                        hintText: 'Sahkan kata laluan',
                        hintStyle: TextStyle(color: Colors.grey[600])),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        fixedSize: const Size(340, 45),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const LogPage();
                        }));
                      },
                      child: Text(
                        'Simpan',
                        style: TextStyle(color: Colors.grey[200], fontSize: 18),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    "lib/images/ikon logo.png",
                    width: 180,
                    height: 180,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
