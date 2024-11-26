import 'package:flutter/material.dart';

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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Background_theme.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              ///スタートボタン
              Positioned(
                top: screenSize.height*0.6,
                left: 0,
                height: screenSize.height*0.2,
                width: screenSize.width*1.0,
                child: Container(
                  width: double.infinity,
                  height: screenSize.height*0.2,
                  color: Colors.yellow,
                  child: Center(child: Text('button設置')),
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
