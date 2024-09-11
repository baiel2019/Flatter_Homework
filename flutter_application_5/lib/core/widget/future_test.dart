import 'dart:developer';

import 'package:flutter/material.dart';

class FutureTest extends StatelessWidget {
const FutureTest({super.key});

@override

Widget build(BuildContext context) {

return Scaffold(

body: Center(

child: StreamBuilder<int>(

stream: countStream(),

builder: (BuildContext context, AsyncSnapshot<int> snapshot)  {
  if (snapshot.connectionState == ConnectionState.waiting) {
return CircularProgressIndicator();}
else if(snapshot.hasError){
return Text('Error: ${snapshot.error}');
} else {
return Text('Count: ${snapshot.data}');}

}
)
));
}}

Future<String> fetchData() async {

await Future.delayed(Duration(seconds: 5));

log('end');

return 'Data fetched';

}

Future<void> fetchDataAndPrint() async{

String data = await fetchData();

print(data);

}

Stream<int> countStream() async*{

for (int i = 1; i <= 60; i++) {

await Future.delayed(Duration(seconds: 1));

log('1');

yield 1;

}}