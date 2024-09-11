   import 'package:flutter/material.dart';
import 'package:flutter_application_5/scrren/story_screen.dart';
import 'package:flutter_application_5/users.dart';


class scrollContainer extends StatelessWidget {
  const scrollContainer({super.key, required this.isNumberImage, required this.isReversed,  this.image, required this.items});

final bool isNumberImage;
final bool isReversed;
final List<User>? image;
final int items;

  @override
  Widget build(BuildContext context) {
    
    final  sizeContainer = MediaQuery.of(context).size.width;
    List<Widget> scrollContainer = [];
    List<double> sizes= [
      sizeContainer * 2 / 3,
      sizeContainer,
      sizeContainer * 2 / 3,
      sizeContainer,
      sizeContainer];
      for (var i = 0; i < items; i++) {
          scrollContainer.add( Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>  StoryScreen(user: image!, index: isNumberImage ? i : i + 5,)));
              },
              child: Container(
                            color: Colors.grey[200],
                            height: isReversed ? sizes[i] : sizes.reversed.toList()[i],
                            child: Center(child: Image(fit: BoxFit.fill, image: NetworkImage(image![isNumberImage ? i : i + 5].photoes.first),)),
                                            ),
            ),
          ));
      }
      return Expanded(child: Column(children: scrollContainer));
  }
}
