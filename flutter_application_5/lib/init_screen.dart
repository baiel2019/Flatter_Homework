import 'package:flutter/material.dart';
import 'package:flutter_application_5/App/app_assets.dart';
import 'package:flutter_application_5/auth/auth_sreen/auth_sreen.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: mq.width,
            height: mq.height,
          ),
          SizedBox(
                width: mq.width,
                height: mq.height * (707/812),
                child: const Image(
                  fit: BoxFit.cover,
                image: NetworkImage('https://s3-alpha-sig.figma.com/img/ca7a/8fcd/49f3eef052966c87b3f213a77c431e5e?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LmBrlFEqEfwJWBsG0PWgQagXrvMwOy9VydiHPzjIq9kPKnUmX6wp8GURxfR3NkCKfKzPx9~8laxWXo7xW5cxucPdU8tIbYsNPS0NP01GEq-reGzU6womtDLTfCacH~-d0I8DcOHc5En2fL8w52gSQAb4CIeO2BGpL5eQonDOf1MAxCzm3WeFOvGnnTiYsFEPnUhkIHAoMpWz2ILSik2TLBGmrIakTPu7Sl9O296b3V0w~igcUoCKUlDDQpkt8d~YwHsQN5n8hMuwXF9v2ObcTh7HrSkY7327Y4xLXr7qNSRsAuvU8gH4OGxd0mg1Es7eYwWAiOLlkb6Om5Jhz5NJYA__')),
             ),
             Positioned(
              top: 0,
              bottom: 130,
              right: 0,
              left: 0,
              child: Image.asset(AppAssets.titel)),
              Positioned(
              bottom: 138,
              left: 16,
              child: Image.asset(AppAssets.info)),
        Positioned(
          bottom: 25,
          left: 20,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 65,vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(8)),
                      backgroundColor: Colors.white,      
                    ),
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const AuthSreen(isRegistrationForm: false,) ,));
                  }, child: const Text('LOG IN',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),)),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(10)),
                      backgroundColor: Colors.black,      
                    ),
                    onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context)=> const AuthSreen(isRegistrationForm: true,)));
                  }, child: const Text('REGISTER',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),)),
                ),
              )
            ],
          ),
        )
          
        ],
      ),
    );
  }
}