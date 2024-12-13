import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';
import 'package:tooth_spot/screen/payment_complete_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('決済画面', style: GoogleFonts.mochiyPopOne(
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
            height: screenSize.height*0.1,
            width: screenSize.width*1.0,
            child: Container(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('料金の支払い方法を選択してください', style: GoogleFonts.mochiyPopOne(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
              )
            ),
          ),

          Positioned(
            top: screenSize.height*0.07,
            left: screenSize.width*0.05,
            height: screenSize.height*0.3,
            width: screenSize.width*0.9,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [

                  ///クレジットカード
                  SizedBox(
                    height: screenSize.height*0.06,
                    width: screenSize.width*0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Settings(test)));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            )
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.credit_card_rounded,
                            color: Colors.green,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('クレジットカードで払う',style: GoogleFonts.mochiyPopOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),
                          ),
                          const Spacer(),
                          Text('◉',style: GoogleFonts.mochiyPopOne(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black
                          ),),
                        ],
                      ),
                    ),
                  ),

                  ///他決済方法１
                  SizedBox(
                    height: screenSize.height*0.06,
                    width: screenSize.width*0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HelpPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0))
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.blueAccent,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('決済方法1',style: GoogleFonts.mochiyPopOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),
                          ),
                          const Spacer(),
                          Text('○',style: GoogleFonts.mochiyPopOne(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black
                          ),),
                        ],
                      ),
                    ),
                  ),

                  ///他決済方法２
                  SizedBox(
                    height: screenSize.height*0.06,
                    width: screenSize.width*0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HelpPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0))
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.blueAccent,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('決済方法2',style: GoogleFonts.mochiyPopOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),
                          ),
                          const Spacer(),
                          Text('○',style: GoogleFonts.mochiyPopOne(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black
                          ),),
                        ],
                      ),
                    ),
                  ),

                  ///他決済方法３
                  SizedBox(
                    height: screenSize.height*0.06,
                    width: screenSize.width*0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HelpPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0))
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.blueAccent,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('決済方法2',style: GoogleFonts.mochiyPopOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),
                          ),
                          const Spacer(),
                          Text('◯',style: GoogleFonts.mochiyPopOne(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black
                          ),),
                        ],
                      ),
                    ),
                  ),

                  ///他決済方法４
                  SizedBox(
                    height: screenSize.height*0.06,
                    width: screenSize.width*0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            )
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.blueAccent,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('決済方法3',style: GoogleFonts.mochiyPopOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),
                          ),
                          const Spacer(),
                          Text('◯',style: GoogleFonts.mochiyPopOne(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///決済完了ボタン
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
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const PaymentCompletePage()));
                  },
                  child: Text('決済実行',style: GoogleFonts.mochiyPopOne(
                      fontSize: 17,
                      color: Colors.black
                  ),),
                )
            ),
          ),
        ],
      )
    );
  }
}
