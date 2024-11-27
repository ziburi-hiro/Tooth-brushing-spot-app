import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/screen/login_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ///全体に画像表示
              Container(
                width: double.infinity,
                height: screenSize.height*1.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Background_theme.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              ///スタートボタン
              Positioned(
                top: screenSize.height*0.75,
                left: screenSize.width*0.25,
                height: screenSize.height*0.06,
                width: screenSize.width*0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const LoginPage()));
                  },
                  child: Text('START',style: GoogleFonts.mochiyPopOne(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
