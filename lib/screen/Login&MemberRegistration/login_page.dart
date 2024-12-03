import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/constants/color.dart';
import 'package:tooth_spot/firebase/user_firestore.dart';
import 'package:tooth_spot/screen/Login&MemberRegistration/member_registration_page.dart';
import 'package:tooth_spot/screen/map_page.dart';
import 'package:tooth_spot/utils/authentication.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool hidePassword = true;
  final emailFormKey = GlobalKey<FormState>();
  final passFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン', style: GoogleFonts.mochiyPopOne(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: mainColor,
        iconTheme: const IconThemeData(
            color: Colors.white
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///email
              Form(
                key: emailFormKey,
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: 'hogehoge@qmail.com',
                    labelText: 'Email Address',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'メールアドレスを入力してください';
                    }
                    return null;
                  },
                ),
              ),

              const SizedBox(height: 15,),

              ///password
              Form(
                key: passFormKey,
                child: TextFormField(
                  controller: passController,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.lock),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        hidePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'パスワードを入力してください';
                    }
                    return null;
                  },
                ),
              ),
              
              TextButton(
                onPressed: (){},
                child: Text('パスワードを忘れた方',style: GoogleFonts.mochiyPopOne(
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.grey,
                ),),
              ),

              const SizedBox(height: 15,),

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
                  onPressed: () async {
                    print('ログイン時の処理記載');
                    if(emailFormKey.currentState!.validate() &&
                        passFormKey.currentState!.validate()) {
                      var result = await Authentication.emailSignIn(email: emailController.text, pass: passController.text);
                      if(result is UserCredential){
                        var _result = await UserFireStore.getUser(result.user!.uid);
                        if(_result == true){
                          print('ログイン成功');
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MapPage()));
                        }else{
                          print('error1');
                          print(result.user!.uid);
                        }
                      }else{
                        print('error2');
                      }
                    }
                  },
                  child: Text('ログイン',style: GoogleFonts.mochiyPopOne(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
              ),

              const SizedBox(height: 10,),

              TextButton(
                style: TextButton.styleFrom(
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const MemberRegistrationPage()));
                },
                child: Text('会員登録はこちら',style: GoogleFonts.mochiyPopOne(
                  fontSize: 18,
                  color: Colors.grey,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.grey,
                ),),
              ),

              Divider(),

              const SizedBox(height: 20,),

              Container(
                height: 100,
                width: 300,
                color: Colors.blueAccent,
                child: Center(child: Text('Google連携ボタン')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
