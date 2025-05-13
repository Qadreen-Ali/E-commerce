import 'package:e_comm/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstant.appSecondaryColor,
        title: Text(
          "Welcome to my app",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: Get.width /1 ,
              height: Get.height/ 2 ,
              color: AppConstant.appSecondaryColor,
              child: Lottie.asset("assets/images/cart.json", width: 200),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Happy Shopping",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: Get.height /12,),
            Material(
              child: Container(
                width: Get.width /1.2,
                height: Get.height/ 12 ,
                decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: TextButton.icon(
                  icon: Image(image: AssetImage("assets/images/google.png"), width: Get.width/12,height: Get.height/12 ,),
                    label: Text("Sign in with google", style: TextStyle(color: AppConstant.appTextColor),),
                  onPressed: (){},
                ),
              ),
            ),
            SizedBox(height: Get.height /50,),
            Material(
              child: Container(
                width: Get.width /1.2,
                height: Get.height/ 12 ,
                decoration: BoxDecoration(
                  color: AppConstant.appSecondaryColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextButton.icon(
                  icon:Icon(Icons.email,
                   color: AppConstant.appTextColor,
                  ),
                  label: Text("Sign in with email",
                  style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: (){},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
