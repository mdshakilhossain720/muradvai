import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../models/usermodel.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


 Future<List<Usermodel>?>getApi() async {
   final respon=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
   if(respon.statusCode==200){
     return usermodelFromJson(respon.body);
   }
   else{
     return null;
   }
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API"),),

      body: FutureBuilder(future: getApi(), builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  row(title: 'Name', value: snapshot.data![index].name.toString()),
                  row(title: 'username', value: snapshot.data![index].username.toString()),
                  row(title: 'Email', value: snapshot.data![index].email.toString()),
                ],
              ),
            );
          },);
        }
      },),
    );
  }
}
class row extends StatelessWidget {
  String title,value;
  
   row({ required this.title,required this.value,
    
    super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value)

        ],
      ),
    );
  }
}

