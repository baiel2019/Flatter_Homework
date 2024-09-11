
import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_assets.dart';
import 'package:flutter_application_5/core/app_dimens/app_dimens.dart';
import 'package:flutter_application_5/core/widget/user_repository.dart';
import 'package:flutter_application_5/core/widget/scroll_container.dart';
import 'package:flutter_application_5/scrren/story_screen.dart';
import 'package:flutter_application_5/users.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key,});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _usersRepository = UserRepository();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final mqSize = mq.width * 0.9;

    return Scaffold(
      body: FutureBuilder<List<User>>(
        future: _usersRepository.fetchUser(),
         builder:(BuildContext context, AsyncSnapshot<List<User>> snapshot){
      if(snapshot.connectionState == ConnectionState.waiting){
return const Center(child: CircularProgressIndicator(),);
      }else if(snapshot.hasError){
        return Text('error: ${snapshot.error}');
      } else{
        return Padding(
        padding: const EdgeInsets.all(20),
        child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            title: 
              Column(
                children: [
                  Image.asset(AppAssets.fotoInfo),
                  const SizedBox(height: AppDimens.med,),
                  const Text('What’s new today',style: TextStyle(fontWeight: FontWeight.w600),),
                ],
              )
            
          ),
          SliverToBoxAdapter(
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                            height: mqSize,
                            child:  ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>  StoryScreen(user: snapshot.data!, index: index,),));
                      },
                      child: Container(
                      color: Colors.grey,
                      width: mqSize,
                      height: mqSize,
                              
                      child: Image(fit: BoxFit.cover,image: NetworkImage(snapshot.data![index].photoes.last),),
                                        ),
                    ),
                   separatorBuilder: (context, index) => const SizedBox(width: AppDimens.med,), itemCount: 5)
                  ),
                ),
          ),
        
        const SliverToBoxAdapter(
          child: Text('Browse all',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
        ),
        
           SliverToBoxAdapter(
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(children: [
                    scrollContainer(isNumberImage: true, isReversed: true, image: snapshot.data, items: 5,),
                    const SizedBox(width: AppDimens.low,),
                    scrollContainer(isNumberImage: false, isReversed: false, image: snapshot.data, items: 5,),
                  ],),
                ) ),

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
                )
        ],
            ),
      );
      }
      }),
    );
  
    
    }}
 