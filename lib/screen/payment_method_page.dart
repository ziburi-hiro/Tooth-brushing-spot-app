import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('お支払い情報', style: GoogleFonts.mochiyPopOne(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenSize.width * 0.8,
                    height: 50,
                    child: Text('支払い方法',style: GoogleFonts.mochiyPopOne(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: screenSize.height*0.1,
            left: 0,
            height: screenSize.height*0.9,
            width: screenSize.width*1.0,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Column(
                  children: [
                    const SizedBox(height: 30,),

                    ///登録されたカードの表示
                    Center(
                      child: Card(
                        color: mainColor,
                        child: InkWell(
                          splashColor: Colors.white.withAlpha(30),
                          onTap: (){},
                          child: SizedBox(
                            height: screenSize.height*0.2,
                            width: screenSize.width*0.85,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(
                                    Icons.credit_card_rounded,
                                    size: 45,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('**************123',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('クレジットカード',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),

                                Center(
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    child: const Text('カード登録削除'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            )
          )
        ],
      ),
    );
  }
}
