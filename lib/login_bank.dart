
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_bank/component_login.dart';
import 'package:login_bank/constrains/constrains.dart';
import 'package:login_bank/login_bank.dart.';
import 'package:login_bank/picture.dart';

class LoginBank extends StatelessWidget {
  const LoginBank({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      
      backgroundColor: blueBank,
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: blueBank,
        title: Padding(
          padding: const EdgeInsets.all(appPadding / 2),
          child: Row(
            children: [
              SizedBox(width: size.width * 0.015),
              Icon(Icons.arrow_back_ios,color: primary,),
              SizedBox(width: size.width * 0.05),
              Text(
                'Sign up',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: headingWhite,
                  fontFamily: 'poppins',
                ),
              ),
            ],
          ),
        ),

        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: primary,
          statusBarIconBrightness: Brightness.light,
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: appPadding),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(appPadding),
                        child: Container(
                          width: size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Welcome to us,',style: TextStyle(color: blueBank,fontSize: 28,fontWeight: FontWeight.w600,fontFamily: 'poppins'),),
                              SizedBox(height: size.height*0.01,),
                              Text('Hello there, create New account',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500,fontFamily: 'poppins'),)
                                        
                            ],
                          )
                          ),
                      ),
                    ]
                  ),

                Picture(),
                ComponentLogin(),

                SizedBox(height: size.height*0.05,)  
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
