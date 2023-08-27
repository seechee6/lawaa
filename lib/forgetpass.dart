import 'package:flutter/material.dart';
import 'package:lawaa/verification.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
          padding: const EdgeInsets.fromLTRB(25,25,25,0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
           children:[  Text('Lupa Kata Laluan',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 30,color: Colors.grey[850]),),
              const SizedBox(height:40),
              Image.asset("lib/images/padlock.png",width: 120,height:120),
              const SizedBox(height: 50,),
              const Text('Sila masukkan e-mel anda untuk mendapatkan kod pengesahan'
              ,style: TextStyle(fontSize: 17),textAlign: TextAlign.center,),
              const SizedBox(height: 50,),
              TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.pink.shade50),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              fillColor: Colors.pink.shade50,
                              filled: true,
                              prefixIcon: const Icon(Icons.email_rounded,),
                              prefixIconColor: Colors.black,
                              hintText: 'e-mel',
                              hintStyle: TextStyle(color: Colors.grey[600])),
                        ),
                        const SizedBox(height:50),
                        ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[300],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                fixedSize:const Size(340, 45),),
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder:  (context) {
                                    return const VerificationPage();
                                  }));
                                }, child:  Text('Hantar',
                                style: TextStyle(color: Colors.grey[200],fontSize: 18),)),
                                const SizedBox(height: 40,),
                                 Image.asset("lib/images/ikon logo.png",width: 180,height: 180,),
           ] ),
        ),
      ),
    ),
    );
  }
}
