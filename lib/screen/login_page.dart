import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        backgroundColor: Colors.blueAccent,
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

              const SizedBox(height: 15,),
              
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
                width: screenSize.width*0.5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  onPressed: (){
                    print('ログイン時の処理記載');
                  },
                  child: Text('LOGIN',style: GoogleFonts.mochiyPopOne(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
              ),

              const SizedBox(height: 20,),

              TextButton(
                style: TextButton.styleFrom(
                ),
                onPressed: (){},
                child: Text('会員登録はこちら',style: GoogleFonts.mochiyPopOne(
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
                color: Colors.red,
                child: Center(child: Text('Google連携ボタン')),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}




//   @override
//   Widget build(BuildContext context) {
//
//     var screenSize = MediaQuery.of(context).size;
//
//     return Scaffold(
//       appBar: AppBar(
//         title:  Text('ログイン',style: GoogleFonts.mPlusRounded1c(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//         ),),
//         backgroundColor: Colors.grey,
//         iconTheme: const IconThemeData(
//             color: Colors.white
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//
//               ///email
//               Form(
//                 key: emailFormKey,
//                 child: TextFormField(
//                   controller: emailController,
//                   decoration: const InputDecoration(
//                     icon: Icon(Icons.mail),
//                     hintText: 'hogehoge@qmail.com',
//                     labelText: 'Email Address',
//                   ),
//                   validator: (value) {
//                     if(value == null || value.isEmpty){
//                       return 'メールアドレスを入力してください';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//
//               ///password
//               Form(
//                 key: passFormKey,
//                 child: TextFormField(
//                   controller: passController,
//                   obscureText: hidePassword,
//                   decoration: InputDecoration(
//                     icon: const Icon(Icons.lock),
//                     labelText: 'Password',
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         hidePassword ? Icons.visibility_off : Icons.visibility,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           hidePassword = !hidePassword;
//                         });
//                       },
//                     ),
//                   ),
//                   validator: (value) {
//                     if(value == null || value.isEmpty){
//                       return 'パスワードを入力してください';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//
//               const SizedBox(height: 15),
//
//               SizedBox(
//                 height: screenSize.height*0.05,
//                 width: screenSize.width*0.5,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.redAccent,
//                   ),
//                   onPressed: () async {
//                     // if(emailFormKey.currentState!.validate() &&
//                     //     passFormKey.currentState!.validate()) {
//                     //   var result = await Authentication.emailSignIn(email: emailController.text, pass: passController.text);
//                     //   if(result is UserCredential){
//                     //     var _result = await UserFireStore.getUser(result.user!.uid);
//                     //     if(_result == true){
//                     //       print('ログイン成功');
//                     //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MyPage()));
//                     //     }else{
//                     //       print('error1');
//                     //       print(result.user!.uid);
//                     //     }
//                     //   }else{
//                     //     print('error2');
//                     //   }
//                     //   //Navigator.of(context).pop();
//                     // }
//                   },
//                   child: const Text('ログイン',style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w900,
//                     color: Colors.white,
//                   ),),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
