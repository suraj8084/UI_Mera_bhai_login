import 'package:flutter/material.dart';
import 'package:login_bank/constrains/constrains.dart';

class ComponentLogin extends StatelessWidget {

  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(width: 1, color: boxBorder),
  );

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hint: Text(
                  'capicreativedesign',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'poppins',
                  ),
                ),
                enabledBorder: border,
                disabledBorder: border,
                focusedBorder: border
              ),
            ),

            SizedBox(height: size.height*0.03,),

            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '(+84) 332249402',
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,  
                    fontFamily: 'poppins',
                  ),
                
                contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                enabledBorder: border,
                disabledBorder: border,
                focusedBorder: border
              ),
            ),

            SizedBox(height: size.height*0.03,),

            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.keyboard_arrow_down),
                hint: Text(
                  '**********',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,  
                    fontFamily: 'poppins',
                  ),
                ),
                
                contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
                enabledBorder: border,
                disabledBorder: border,
                focusedBorder: border
              ),
            ),

            SizedBox(height: size.height*0.03,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_box_outlined,color: blueBank,size: 32,),
                SizedBox(width: size.width*0.02,),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black,fontSize: 16, fontFamily: 'poppins'),
                      children: <TextSpan>[
                        TextSpan(text: 'By creating an account your aggree to our '),
                        TextSpan(text: 'Term and Condtions',style: TextStyle(
                          fontSize: 16,color: blueBank,fontWeight: FontWeight.bold, fontFamily: 'poppins'
                        ))
                      ]
                    )),
                )
              ],
            ),

            SizedBox(height: size.height*0.04,),

            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: blueBank
              ),
              child: Text('Sign up',style: TextStyle(
                    fontSize: 18,color: primary,fontWeight: FontWeight.bold, fontFamily: 'poppins'
                  ))
            ),

            SizedBox(height: size.height*0.04,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Have an account?',style: TextStyle(color: Colors.black,fontSize: 14, fontFamily: 'poppins')),
                SizedBox(width: size.width*0.03,),
                Text('Sign In',style: TextStyle(
                    fontSize: 14,color: blueBank,fontWeight: FontWeight.bold, fontFamily: 'poppins'
                  ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
