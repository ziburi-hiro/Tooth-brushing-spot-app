import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';

class QrScanPage extends StatefulWidget {
  const QrScanPage({super.key});

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
