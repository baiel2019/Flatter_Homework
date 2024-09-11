import 'package:flutter/material.dart';
import 'package:flutter_application_5/scrren/auth_sreen.dart';
import 'package:flutter_application_5/scrren/seach_sreen.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key,required , required this.isWhite, required this.text, required this.isButtonResgist });

final String text;
final bool isWhite;
final bool isButtonResgist;

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(8)),
                      backgroundColor: isWhite ? Colors.white : Colors.black,      
                    ),
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> isButtonResgist ? AuthSreen(isRegistrationForm: isWhite ? false : true,) : SeachSreen() ,));
                  }, child: Text( text ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: isWhite ? Colors.black : Colors.white),))));
  }
}