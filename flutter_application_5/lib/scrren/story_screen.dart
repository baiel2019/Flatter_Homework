
import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_dimens/app_dimens.dart';
import 'package:flutter_application_5/scrren/profil_sreen.dart';
import 'package:flutter_application_5/users.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key, required this.user, required this.index,});
final List<User> user;
final int index;

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {

void initState() {

countStream (context: context);

super.initState();}

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
  final  images = widget.user[widget.index].photoes.first;
    return Scaffold(
      body: Stack(
        children:[ 
          
          SizedBox(
            width: mq.width,
            height: mq.height,
            child: Image(fit: BoxFit.cover,image: NetworkImage(images)),),
          Container(
            decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomRight,colors: [Colors.black,Color.fromARGB(0, 255, 255, 255)])),
            height: 500,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>  ProfilSreen(snapshot: widget.user, index: widget.index,)));
                
              },
              child: SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey, image: DecorationImage(image: NetworkImage(images))),
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(width: AppDimens.low,),
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.user[widget.index].name,style: const TextStyle(fontSize: 15, color: Colors.white),),
                        Text(widget.user[widget.index].nick,style: TextStyle(fontSize: 13, color: Colors.white),),
                        
                      ],
                    ),
                    SizedBox(width: mq.width * 0.45,),
                    const Icon(Icons.close,size: 35,color: Colors.white,)
                  ],
                ),
              ),
            ),
          )
          ]
          ),
    );
}}

Future<void> countStream({required BuildContext context,}) async {
for (int i=1; i <= 5; i++) {
await Future.delayed (Duration(seconds: 1));
if (i == 5) {
Navigator.pop(context);
}
}
}