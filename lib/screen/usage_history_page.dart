import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';

class UsageHistoryPage extends StatefulWidget {
  const UsageHistoryPage({super.key});

  @override
  State<UsageHistoryPage> createState() => _UsageHistoryPageState();
}

class _UsageHistoryPageState extends State<UsageHistoryPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('利用履歴', style: GoogleFonts.mochiyPopOne(
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
              top: screenSize.height*0.03,
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

                    ///利用履歴をリストで表示
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('Tooth Spot',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('オーダー番号 : xxxxxxxxxxx',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),

                                const Divider(
                                  color: Colors.white,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('購入時間 : 12/13 12:34',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('購入場所 : ００駅',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),

                                const Divider(
                                  color: Colors.white,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('利用料金',style: GoogleFonts.mochiyPopOne(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),),
                                      Text('JPY ¥xxx',style: GoogleFonts.mochiyPopOne(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

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
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('Tooth Spot',style: GoogleFonts.mochiyPopOne(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('オーダー番号 : xxxxxxxxxxx',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),

                                const Divider(
                                  color: Colors.white,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('購入時間 : 12/11 22:34',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('購入場所 : XX駅',style: GoogleFonts.mochiyPopOne(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),),
                                ),

                                const Divider(
                                  color: Colors.white,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('利用料金',style: GoogleFonts.mochiyPopOne(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),),
                                      Text('JPY ¥xxx',style: GoogleFonts.mochiyPopOne(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}

