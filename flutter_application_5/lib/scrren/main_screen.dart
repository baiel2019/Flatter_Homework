
import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_assets.dart';
import 'package:flutter_application_5/core/app_dimens/app_dimens.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key,});


  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final mqSize = mq.width * 0.9;

List<double> size = [mqSize *2/3 ,mqSize ,mqSize *2/3,mqSize, mqSize];

    return Scaffold(
      body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
              child:Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                          height: mqSize,
                          child:  ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                  color: Colors.red,
                  width: mqSize,
                  height: mqSize,

                  child: Image.asset(fit: BoxFit.cover,AppAssets.listImagesRow[index]),
                ),
                 separatorBuilder: (context, index) => const SizedBox(width: AppDimens.med,), itemCount: 5)
                ),
              ),
        ),

        SliverToBoxAdapter(
              child:Padding(
                padding: const EdgeInsets.all(20),
                child: Row(children: [
                  _scrollContainer(context, isReversed: true, isNumberImage: true,),
                  SizedBox(width: AppDimens.low,),
                  _scrollContainer(context, isReversed: false, isNumberImage: false,)
                ],),
              ) )
      ],
    )
    );
    }}

    Column _scrollContainer(BuildContext context, {required bool isReversed, required bool isNumberImage}){
    final  sizeContainer = MediaQuery.of(context).size;
    List<Widget> scrollContainer = [];
    List<double> sizes= [
      sizeContainer.width * 2 / 3,
      sizeContainer.width,
      sizeContainer.width * 2 / 3,
      sizeContainer.width,
      sizeContainer.width];
      for (var i = 0; i < 5; i++) {
          scrollContainer.add( Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
                          color: Colors.grey[200],
                          width: sizeContainer.width * 0.9 * 0.48,
                          height: isReversed ? sizes[i] : sizes.reversed.toList()[i],
                          child: Center(child: Image.asset(fit: BoxFit.fill, AppAssetsList.listImagesColumn[ isNumberImage ? i : i + 5]),),
                                          ),
          ));
      }
      return Column(children: scrollContainer);
    }