
import 'package:flutter/material.dart';
import 'package:flutter_application_5/App/app_textstyles.dart';
import 'package:flutter_application_5/auth/auth_sreen/widget/auth_field.dart';
import 'package:flutter_application_5/main.dart';

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

final String Email = 'NarutoUzumaki@mail.com';
final String Password = 'hokage_7';

  @override
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
                    // ignore: prefer_const_constructors
                    SizedBox(height: 20,),
                    AuthField(text: 'Password', controller: controllerPassword, isPassword: true,)
                  ],
                )
              ),
              const SizedBox(height: 20,),
              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 160,vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(5)),
                      backgroundColor: Colors.black,      
                    ),
                    onPressed: () {
                        if(_formKey.currentState!.validate() && widget.isRegistrationForm == false){
                          if(controllerEmail.text == Email && controllerPassword.text == Password ) {
                          controllerEmail.text = '';
                          controllerPassword.text = '';
                        Navigator.push(context, MaterialPageRoute(builder:(context)=> const MyApp()));
                      } }
                      else if (_formKey.currentState!.validate() && widget.isRegistrationForm == true){
                          controllerEmail.text = '';
                          controllerPassword.text = '';
                        Navigator.push(context, MaterialPageRoute(builder:(context)=> const MyApp()));
                      }
                      
                  }, child: Text(widget.isRegistrationForm ? 'NEXT' : 'LOG IN',style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 18,color: Colors.white),)
              )
            ],
          ),
        ),
    );
  }
}