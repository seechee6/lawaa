import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[200],
        appBar: AppBar(
        
          title: const Text('LAWAA',style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.red[300],
          elevation: 0,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.home)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.people_alt_sharp)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.storefront)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),
            ]),
            const Divider(color: Colors.black,),
            const SizedBox(height: 15.0,),
            const Text('Kelab Wanita Ikon Malaysia',style: TextStyle
            (fontWeight:FontWeight.bold,fontSize: 20.0 ),),
            const Text('(KWIM)',style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20.0),),
            Center(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                margin:const EdgeInsets.all(15.0),
              decoration: BoxDecoration(color: Colors.red[50],
              border:Border.all(color: Colors.black),
              
              ),
                child: Column(children:  [
                  const Text('31/3/2023'),
                  const Divider(color: Colors.black,),
                  const Text('MAJLIS BERBUKA PUASA BERSAMA ANAK-ANAK YATIM',
                  style:TextStyle(fontWeight: FontWeight.bold) ,),
                  const Divider(color: Colors.black,),
                  const Text('Pada 28hb April yang lalu bersamaan 26 Ramadhan 1443H, KWIM Negeri Sembilan telah mengadakan Majlis berbuka Puasa bersama-sama dengan anak-anak yatim/miskin dari Rumah MawarKu yang bertempat di Seremban.'),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red[600]),
                  onPressed: (){}, 
                  child: const Text('Info Lanjut'))
                ]),
              
              
              
                
              
            )
            
        ),
      ],
        
        
        ),
        
        drawer: Drawer(
          
          backgroundColor: Colors.red[200],
          child: SingleChildScrollView(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100.0,
                  color: Colors.red[300],
                ),
                buildMenuItems(context),
              ],
            ),
          ),
        )
        );

  }
}

Widget buildMenuItems(BuildContext context) => Column(
      children: [
        ListTile(
          leading: const Icon(Icons.topic_outlined),
          title: const Text('PERMOHONAN BANTUAN',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
          onTap: (){},
        ),
        const Divider(color: Colors.black,)
        ,
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('BUAT ADUAN',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
          onTap: (){},
        ),
        const Divider(color: Colors.black,)
        ,
        ListTile(
          leading: const Icon(Icons.menu_book_outlined),
          title: const Text('BORANG PENILAIAN',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
          onTap: (){},
        ),
        const Divider(color: Colors.black,)
        ,
        ListTile(
          leading: const Icon(Icons.calendar_today_outlined),
          title: const Text('ARE YOU OK?',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
          onTap: (){},
        ),
        const Divider(color: Colors.black,)
        ,
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('ACCOUNT SETTING',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
          onTap: (){},
        ),
        const Divider(color: Colors.black,)
        ,
        ListTile(
          leading: const Icon(Icons.info_outline_rounded),
          title: const Text('LATAR BELAKANG',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
          onTap: (){},
        ),
        const Divider(color: Colors.black,)
        ,
      ],
    );
