import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooth_spot/components/registration_success_box.dart';
import 'package:tooth_spot/constants/color.dart';
import 'package:tooth_spot/firebase/user_firestore.dart';
import 'package:tooth_spot/models/account.dart';
import 'package:tooth_spot/utils/authentication.dart';

class MemberRegistrationPage extends StatefulWidget {
  const MemberRegistrationPage({super.key});

  @override
  State<MemberRegistrationPage> createState() => _MemberRegistrationPageState();
}

class _MemberRegistrationPageState extends State<MemberRegistrationPage> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();
  bool hidePassword = true;
  final userNameFormKey = GlobalKey<FormState>();
  final emailFormKey = GlobalKey<FormState>();
  final passFormKey = GlobalKey<FormState>();
  final repassFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('会員登録',style: GoogleFonts.mochiyPopOne(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        )),
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

              ///userName
              Form(
                key: userNameFormKey,
                child: TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'ユーザ名',
                    labelText: 'User Name',
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'ユーザネームを入力してください';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 30,),

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
                    if(value == null || value.isEmpty){
                      return 'メールアドレスを入力してください';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 30,),

              ///password
              Form(
                key: passFormKey,
                child: TextFormField(
                  controller: passController,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.lock),
                    labelText: 'Password',
                    helperText: '大文字小文字数字いずれかを含む8文字以上',
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
                    if(value == null || value.isEmpty){
                      return 'パスワードを入力してください';
                    }else if(value.length < 8){
                      return '8文字以上で入力してください';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 30,),

              ///repassword
              Form(
                key: repassFormKey,
                child: TextFormField(
                  controller: repassController,
                  obscureText: hidePassword,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.lock),
                    hintText: 'パスワードを再入力してください',
                    labelText: 'Re-Enter Password',
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
                    if(value == null || value.isEmpty){
                      return '再度パスワードを入力してください';
                    }else if(value != passController.text){
                      return '入力されたパスワードと一致しません';
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(height: 30,),

              ///登録ボタン
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
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
                      print('aa');
                      if(userNameFormKey.currentState!.validate() &&
                          emailFormKey.currentState!.validate() &&
                          passFormKey.currentState!.validate() &&
                          repassFormKey.currentState!.validate()
                      ) {
                        var result = await Authentication.signUp(email: emailController.text, pass: passController.text);
                        print(result);
                        if(result is UserCredential){
                          Account newAccount = Account(
                            id: result.user!.uid,
                            name: userNameController.text,
                            emailAddress: emailController.text,
                          );
                          var result0 = await UserFireStore.setUser(newAccount);
                          print(result0);
                          if(result0 == true){
                            if(!mounted) return;
                            print('登録完了');
                            showDialog(
                                context: context,
                                barrierDismissible: false ,
                                builder: (_) => const RegistrationSuccessBox()
                            );
                          }else {
                            Authentication.deleteUser();
                            print('error1');
                          }
                        }else {
                          print('error2');
                        }
                      }
                    },
                    child: Text('登 録',style: GoogleFonts.mochiyPopOne(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
