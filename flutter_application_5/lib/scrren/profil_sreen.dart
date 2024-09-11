
import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_dimens/app_dimens.dart';
import 'package:flutter_application_5/core/app_dimens/app_textstyles.dart';
import 'package:flutter_application_5/core/common/common_button.dart';
import 'package:flutter_application_5/core/widget/scroll_container.dart';
import 'package:flutter_application_5/users.dart';

class ProfilSreen extends StatelessWidget {
  const ProfilSreen({super.key, required this.snapshot, required this.index});
final List<User> snapshot;
final int index;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: mq.height * 0.4,
          title: Column(
              children: [
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey,image: DecorationImage(image: NetworkImage(snapshot[index].photoes.first))),
                            width: 150,
                            height: 150,
                            ),
                            Text(snapshot[index].name, style: AppTextstyles.s34w400,),
                            Text(snapshot[index].nick, style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
                            const SizedBox(
                              height: AppDimens.buttonHeight,
                              width: double.infinity,
                              child: CommonButton(isWhite: false, text: 'FOLLOW', isButtonResgist: false,),
                            ),
                            SizedBox( height: AppDimens.low,),
                            const SizedBox(
                              height: AppDimens.buttonHeight,
                              width: double.infinity,
                              child: CommonButton(isWhite: true, text: 'MESSAGE', isButtonResgist: false,),
                            ),]
                            ),
                            ),
                            SliverToBoxAdapter(
                      child:Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(children: [
                          scrollContainer(isNumberImage: true, isReversed: true, image: snapshot,  items: 3,),
                          const SizedBox(width: AppDimens.low,),
                          scrollContainer(isNumberImage: false, isReversed: false, image: snapshot, items: 3,),
                        ],),
                      ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(
                            width: mq.width,
                            height: mq.height *0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              const Icon(Icons.home,size: 30,),
                              const SizedBox(width: AppDimens.hid,),
                              const Icon(Icons.search,size: 30,),
                              const SizedBox(width: AppDimens.hid,),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                                  child: Icon(Icons.add,size: 30,),
                                )),
                                const SizedBox(width: AppDimens.hid,),
                              const Icon(Icons.sms,size: 30,),
                              const SizedBox(width: AppDimens.hid,),
                              const Icon(Icons.person,size: 30,),
                            ],),
                          ),
                      ),]
    )
    );
  }
}