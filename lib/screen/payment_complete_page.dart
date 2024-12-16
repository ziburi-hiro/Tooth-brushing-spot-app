import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';

class PaymentCompletePage extends StatefulWidget {
  const PaymentCompletePage({super.key});

  @override
  State<PaymentCompletePage> createState() => _PaymentCompletePageState();
}

class _PaymentCompletePageState extends State<PaymentCompletePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('支払い完了', style: GoogleFonts.mochiyPopOne(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: mainColor,
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
      ),

      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: mainColor,
          ),

          Positioned(
            top: 0,
            left: 0,
            height: screenSize.height*0.2,
            width: screenSize.width*1.0,
            child: Column(
              children: [
                Container(
                    width: screenSize.width*0.3,
                    height: screenSize.height*0.15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                    ),
                    child:const Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.blueAccent,
                        size: 50,
                      ),
                    ),
                ),

                Text('Thank You', style: GoogleFonts.mochiyPopOne(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Payment Complete', style: GoogleFonts.mochiyPopOne(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),

          Positioned(
            top: screenSize.height*0.22,
            left: screenSize.width*0.05,
            height: screenSize.height*0.21,
            width: screenSize.width*0.9,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [

                  ///支払い方法表示
                  Container(
                    width: screenSize.width*0.9,
                    height: screenSize.height*0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      border: Border.all(
                        color: Colors.grey
                      )
                    ),
                    child: Row(
                      children: [
                        Text('支払い方法'),
                        Text('Card'),
                      ],
                    ),
                  ),

                  ///番号
                  Container(
                    width: screenSize.width*0.9,
                    height: screenSize.height*0.07,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey
                        )
                    ),
                    child: Row(
                      children: [
                        Text('番号'),
                        Text('*************123'),
                      ],
                    ),
                  ),

                  ///決済時間
                  Container(
                    width: screenSize.width*0.9,
                    height: screenSize.height*0.07,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        border: Border.all(
                            color: Colors.grey
                        )
                    ),
                    child: Row(
                      children: [
                        Text('時間'),
                        Text('2024-12-12 21:11:11'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///確認ボタン
          Positioned(
            top: screenSize.height*0.75,
            left: screenSize.width*0.1,
            height: screenSize.height*0.05,
            width: screenSize.width*0.8,
            child: Container(
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('確認',style: GoogleFonts.mochiyPopOne(
                      fontSize: 17,
                      color: Colors.black
                  ),),
                )
            ),
          ),
        ],
      ),
    );
  }
}
