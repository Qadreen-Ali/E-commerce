import 'package:e_comm/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import 'SignUpScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible){
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppConstant.appSecondaryColor,
              centerTitle: true,
              title: Text(
                "SignIn Screen",
                style: TextStyle(color: AppConstant.appTextColor),
              ),
            ),
            body: Container(
              child: Column(
                children: [
                  isKeyboardVisible? Text("Welcome to my app"):
                  Column(
                    children: [

                      Lottie.asset("assets/images/cart.json",width: 290)
                    ],
                  ),
                  SizedBox(height: Get.height/20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                      cursorColor: AppConstant.appSecondaryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                          contentPadding: EdgeInsets.only(top: 2,left: 8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                      cursorColor: AppConstant.appSecondaryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: Icon(Icons.visibility_off),
                          contentPadding: EdgeInsets.only(top: 2,left: 8),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerRight,
                    child: Text("Forget Password",
                    style: TextStyle(color: AppConstant.appSecondaryColor, fontWeight: FontWeight.bold ),),
                  ),
                  SizedBox(height: Get.height/20,),
                  Material(
                    child: Container(
                      width: Get.width /2,
                      height: Get.height/ 18 ,
                      decoration: BoxDecoration(
                          color: AppConstant.appSecondaryColor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextButton(child:  Text("SIGN IN"
                          , style: TextStyle(color: AppConstant.appTextColor),),
                        onPressed: (){},
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height/20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account"
                        , style: TextStyle(color: AppConstant.appSecondaryColor),),
                      InkWell(
                        onTap: () => Get.offAll(() => SignUpScreen()),
                        child: Text("Sign up"
                          , style: TextStyle(color: AppConstant.appSecondaryColor, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  )
                ],
              ),
            ),

          );
        }
    );
  }
}
