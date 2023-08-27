import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lawaa/reset.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
                    'Sahkan e-mel anda',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.grey[850]),
                  ),
                  const SizedBox(height: 40),
                  Image.asset("lib/images/verify.png", width: 120, height: 120),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Sila masukkan kod pengesahan',
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 68,
                          width: 64,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )),
                      SizedBox(
                          height: 68,
                          width: 64,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )),
                      SizedBox(
                          height: 68,
                          width: 64,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          )),
                      SizedBox(
                          height: 68,
                          width: 64,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ))
                    ],
                  )),
                  const SizedBox(height: 50),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        fixedSize: const Size(340, 45),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ((context) {
                          return const Resetpage();
                        })));
                      },
                      child: Text(
                        'Sahkan',
                        style: TextStyle(color: Colors.grey[200], fontSize: 18),
                      )),
                  const SizedBox(
                    height: 60,
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
