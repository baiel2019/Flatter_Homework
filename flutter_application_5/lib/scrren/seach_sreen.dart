import 'package:flutter/material.dart';
import 'package:flutter_application_5/core/app_dimens/app_dimens.dart';
import 'package:flutter_application_5/users.dart';

class SeachSreen extends StatefulWidget {
  const SeachSreen({super.key});

  @override
  State<SeachSreen> createState() => _SeachSreenState();
}

class _SeachSreenState extends State<SeachSreen> {

    List<User> result = [];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Search', style: TextStyle(fontSize: 40),),
            TextField(
              onChanged: (value) {
                result.clear();
                _searchUser(value, result);
                setState(() {});
              },
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide())

              ),
            ),
            result.isEmpty ? Center(child: Text('no users')) : Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: AppDimens.low,),
                itemCount: result.length,
                itemBuilder: (context, index) => 
              ListTile(
                leading: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(fit: BoxFit.cover ,image: NetworkImage(result[index].photoes.first))),
                ),
                title: Text(result[index].name),
              )
              ,),
            ),

            
          ],
        ),
      ),
    );
  }
  List<User> _searchUser(String searchValue, List<User> result){
    final users = AllUsers().users;
    for (var element in users){
if(element.name.contains(searchValue) || element.name.contains(searchValue.toUpperCase())){
  result.add(element);
}
    }
    return result;
  }
}