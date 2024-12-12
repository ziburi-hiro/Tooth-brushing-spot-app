import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';
import 'package:tooth_spot/models/account.dart';
import 'package:tooth_spot/screen/help_page.dart';
import 'package:tooth_spot/screen/payment_method_page.dart';
import 'package:tooth_spot/screen/usage_history_page.dart';
import 'package:tooth_spot/utils/authentication.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Account myAccount = Authentication.myAccount!;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('マイページ', style: GoogleFonts.mochiyPopOne(
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
                     width: screenSize.height*0.08,
                     decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.grey,
                     ),
                   ),

                  SizedBox(
                    width: screenSize.width*0.02,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ID:${myAccount.id}',style: GoogleFonts.mochiyPopOne(
                        color: Colors.white
                      ),),
                      Text('名前:${myAccount.name}',style: GoogleFonts.mochiyPopOne(
                          color: Colors.white
                      ),),
                    ],
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
              child: Column(
                children: [

                  const SizedBox(height: 30,),

                  ///利用料金の表示
                  Container(
                    height: screenSize.height*0.15,
                    width: screenSize.width*0.8,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('今月の利用回数 : ',style: GoogleFonts.mochiyPopOne(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                            Text('2回',style: GoogleFonts.mochiyPopOne(
                            color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),)
                          ],
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('今月の利用料金 : ',style: GoogleFonts.mochiyPopOne(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                            Text('¥XXX',style: GoogleFonts.mochiyPopOne(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 30,),

                  ///決済方法
                  SizedBox(
                    height: screenSize.height*0.10,
                    width: screenSize.width*0.8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        backgroundColor: mainColor
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PaymentMethodPage()));
                      },
                      child: Text('決済方法',style: GoogleFonts.mochiyPopOne(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                  ),

                  const SizedBox(height: 30,),

                  ///利用履歴
                  SizedBox(
                      height: screenSize.height*0.10,
                      width: screenSize.width*0.8,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            backgroundColor: mainColor
                        ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UsageHistoryPage()));
                        },
                        child: Text('利用履歴',style: GoogleFonts.mochiyPopOne(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      )
                  ),

                  const SizedBox(height: 30,),

                  Container(
                    height: screenSize.height*0.02,
                    width: double.infinity,
                    color: Colors.grey,
                  ),

                  const SizedBox(height: 30,),
                  
                  ///設定
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
                            Icons.settings,
                            color: Colors.green,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('設定',style: GoogleFonts.mochiyPopOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),
                          ),
                          const Spacer(),
                          Text('>',style: GoogleFonts.mochiyPopOne(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black
                          ),),
                        ],
                      ),
                    ),
                  ),

                  ///ヘルプ
                  SizedBox(
                    height: screenSize.height*0.06,
                    width: screenSize.width*0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HelpPage()));
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
                            Icons.help_outline,
                            color: Colors.blueAccent,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('ヘルプ',style: GoogleFonts.mochiyPopOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),
                          ),
                          const Spacer(),
                          Text('>',style: GoogleFonts.mochiyPopOne(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black
                          ),),
                        ],
                      ),
                    ),
                  ),

                  ///ログアウト
                  SizedBox(
                    height: screenSize.height*0.06,
                    width: screenSize.width*0.9,
                    child: ElevatedButton(
                      onPressed: () async {
                        try{
                          await FirebaseAuth.instance.signOut();
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        } catch (e) {
                          print("ログアウトに失敗しました：${e.toString()}");
                        }
                      },
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
                            Icons.logout,
                            color: Colors.redAccent,
                            size: 26,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text('ログアウト',style: GoogleFonts.mochiyPopOne(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black
                            ),),
                          ),
                          const Spacer(),
                          Text('>',style: GoogleFonts.mochiyPopOne(
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
        ],
      ),
    );
  }
}
