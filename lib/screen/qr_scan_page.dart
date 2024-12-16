import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:tooth_spot/screen/payment_page.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({super.key});

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> with SingleTickerProviderStateMixin{
  MobileScannerController scannerController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('QR読み取り', style: GoogleFonts.mochiyPopOne(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: mainColor,
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: screenSize.height*0.7,
            child: MobileScanner(
              controller: scannerController,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(
            height: screenSize.height*0.05,
            width: screenSize.width*0.7,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const PaymentPage()));
              },
              child: Text('決済画面へ',style: GoogleFonts.mochiyPopOne(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
