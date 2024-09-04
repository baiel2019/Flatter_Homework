import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_assets.dart';
import 'package:flutter_application_5/core/app_dimens/app_dimens.dart';
import 'package:flutter_application_5/core/common/common_button.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: mq.width ,
            height: mq.height,
          ),
           Image.asset(
            scale: 0.1,
            AppAssets.rectangle),
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
            bottom: 20,
             child: SizedBox(
              height: AppDimens.buttonHeight,
              width: mq.width,
               child: const Padding(
                 padding: EdgeInsets.symmetric(horizontal: 10),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: double.infinity,
                                height: AppDimens.buttonHeight,
                                child: CommonButton(text: 'LOG IN', isWhite: true)),
                            ),
                            SizedBox(width: AppDimens.low,),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                width: double.infinity,
                                height: AppDimens.buttonHeight,
                                child: CommonButton(text: 'REGISTER', isWhite: false)),
                            )
                            
                        ],
                      ),
               ),
             ),
           ),
           
        
        
          
        ],
      ),
    );
  }
}
