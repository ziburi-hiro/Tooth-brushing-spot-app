import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';

class RegistrationSuccessBox extends StatelessWidget {
  const RegistrationSuccessBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text('会員登録完了',style: GoogleFonts.mochiyPopOne(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '会員登録が完了しました\nログインしてください',
              textAlign: TextAlign.center,
              style: GoogleFonts.mochiyPopOne(
                  fontSize: 16,
                  color: Colors.grey
              ),
            ),
          ),

          const SizedBox(height: 24,),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: mainColor,
              elevation: 5,
              shape: const StadiumBorder(),
            ),
            onPressed: (){
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 18,
              ),
              child: Text(
                'トップへ戻る',
                style: GoogleFonts.mochiyPopOne(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24,),
        ],
      ),
    );
  }
}
