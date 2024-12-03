import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return PopScope(
      canPop: false,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('MAP',style: GoogleFonts.mochiyPopOne(
        //     color: Colors.white,
        //     fontWeight: FontWeight.bold,
        //   )),
        //   backgroundColor: mainColor,
        //   iconTheme: const IconThemeData(
        //       color: Colors.white
        //   ),
        // ),

        body: Stack(
          children: [
            ///全体に地図表示
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.yellow,
            ),

            ///QR読み込みボタン
            Positioned(
              top: screenSize.height*0.9,
              left: screenSize.width*0.2,
              height: screenSize.height*0.06,
              width: screenSize.width*0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                ),
                onPressed: (){
                  ///カメラ起動を実装
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const LoginPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 2,),

                    Text('QRをスキャン',style: GoogleFonts.mochiyPopOne(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  ],
                ),
              ),
            ),

            ///検索ボタン
            Positioned(
                top: screenSize.height*0.69,
                right: screenSize.width*0.05,
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: mainColor,
                  elevation: 0,
                  highlightElevation: 0,
                  onPressed: (){

                  },
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
            ),

            ///ロケーションボタン
            Positioned(
              top: screenSize.height*0.76,
              right: screenSize.width*0.05,
              height: 50,
              width: 50,
              child: FloatingActionButton(
                mini: true,
                backgroundColor: mainColor,
                elevation: 0,
                highlightElevation: 0,
                onPressed: (){

                },
                child: const Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              )
            ),

            ///ヘルプボタン
            Positioned(
                top: screenSize.height*0.83,
                right: screenSize.width*0.05,
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: mainColor,
                  elevation: 0,
                  highlightElevation: 0,
                  onPressed: (){

                  },
                  child: const Icon(
                    Icons.help_outline,
                    color: Colors.white,
                  ),
                )
            ),

            ///マイページボタン
            Positioned(
                top: screenSize.height*0.9,
                right: screenSize.width*0.05,
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: mainColor,
                  elevation: 0,
                  highlightElevation: 0,
                  onPressed: (){

                  },
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}
