import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';
import 'package:lottie/lottie.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('ヘルプ', style: GoogleFonts.mochiyPopOne(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: mainColor,
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: screenSize.height*0.3,
              child: Lottie.asset(
                  'assets/images/help.json',
                  errorBuilder: (context, error, stackTrace) {
                    return const Padding(
                      padding: EdgeInsets.all(10),
                      child: CircularProgressIndicator(),
                    );
                  }
              ),
            ),

            ///
            Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                onExpansionChanged: (bool changed){},
                textColor: mainColor,
                iconColor: mainColor,
                title: Text('XXXXXXXX',style: GoogleFonts.mochiyPopOne(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    child: Text('XXXXXXXX',style: GoogleFonts.mochiyPopOne(
                      fontSize: 18,
                    ),),
                  )
                ],
              ),
            ),

            ///
            Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                textColor: mainColor,
                iconColor: mainColor,
                onExpansionChanged: (bool changed){},
                title: Text('XXXXXXXX',style: GoogleFonts.mochiyPopOne(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    child: Text('XXXXXXXX',style: GoogleFonts.mochiyPopOne(
                      fontSize: 18,
                    ),),
                  ),
                ],
              ),
            ),

            ///
            Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                textColor: mainColor,
                iconColor: mainColor,
                onExpansionChanged: (bool changed){},
                title: Text('XXXXXXX',style: GoogleFonts.mochiyPopOne(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                    child: Text('XXXXXXXX',style: GoogleFonts.mochiyPopOne(
                      fontSize: 18,
                    ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
