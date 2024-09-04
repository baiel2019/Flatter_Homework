
import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_dimens/app_dimens.dart';
import 'package:flutter_application_5/core/app_dimens/app_textstyles.dart';
import 'package:flutter_application_5/field/auth_field.dart';
import 'package:flutter_application_5/scrren/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthSreen extends StatefulWidget {
  const AuthSreen({super.key, required this.isRegistrationForm});

final bool isRegistrationForm;

  @override
  State<AuthSreen> createState() => _AuthSreenState();
}

final controllerPassword = TextEditingController();
final controllerEmail = TextEditingController();

class _AuthSreenState extends State<AuthSreen> {

final _formKey = GlobalKey<FormState>();


  @override


// void dispose(){
//   controllerEmail.dispose();
//   controllerPassword.dispose();
//   super.dispose();
// }

  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.isRegistrationForm ? 'Registration' : 'Log in',
                  style: AppTextstyles.s34w400,
                  )
                  ),
              const SizedBox(height: 32,),
              Form(
                key: _formKey,
                child:  Column(
                  children: [
                    AuthField(text: 'Email.com', controller: controllerEmail, isPassword: false,),
                     const SizedBox(height: AppDimens.med,),
                    AuthField(text: 'Password', controller: controllerPassword, isPassword: true,)
                  ],
                )
              ),
              const SizedBox(height: AppDimens.med,),
              SizedBox(
                height: AppDimens.buttonHeight,
                width: double.infinity,
                child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(5)),
                        backgroundColor: Colors.black,      
                      ),
                      onPressed: () async{
                        final SharedPreferences prefs = await SharedPreferences.getInstance();
                        if(_formKey.currentState!.validate() && widget.isRegistrationForm == false){
                          final Email = prefs.getString('email');
                          final Password = prefs.getString('password');
                            if(controllerEmail.text == Email && controllerPassword.text == Password ) {
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> const MainScreen()));
                        } }
                        else if (_formKey.currentState!.validate() && widget.isRegistrationForm == true){
                            await prefs.setString('email', controllerEmail.text);
                            await prefs.setString('password', controllerPassword.text);
                          Navigator.push(context, MaterialPageRoute(builder:(context)=> const MainScreen()));
                        }
                        
                    }, child: Text(widget.isRegistrationForm ? 'NEXT' : 'LOG IN',style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 18,color: Colors.white),)
                ),
              )
            ],
          ),
        ),
    );
  }
}

