import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../models/coomplex.dart';
class HomeApi extends StatefulWidget {
  const HomeApi({super.key});

  @override
  State<HomeApi> createState() => _HomeApiState();
}

class _HomeApiState extends State<HomeApi> {
  //var data;
  // Future<List<DataNumber>?> getApi() async {
  //   final respon=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  //   var data =jsonDecode(respon.body);
  //    if(respon.statusCode==200){
  //
  //    // data=jsonDecode(respon.body.toString());
  //     return dataNumberFromJson(data);
  //    }else{
  //      return null;
  //
  //    }
  // }
Future<List<DataNumber>?>getApi() async {
  final respon=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  var data= jsonDecode(respon.body);
  if(respon.statusCode==200){
    print(respon.body);
    return dataNumberFromJson(respon.body);
  }else{
    return null;
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api'),
      ),
      body: Column(
        children: [
             Expanded(
               child: FutureBuilder(

                   future: getApi(),
                 builder: (context, snapshot){
                     if(snapshot.connectionState==ConnectionState.waiting){
                       return Center(
                         child: CircularProgressIndicator(),
                       );
                     }else{
                       return ListView.builder(
                         scrollDirection: Axis.vertical,
                         shrinkWrap: true,
                         primary: false,
                         itemCount:snapshot.data!.length,
                         itemBuilder: (context, index) {
                           final data = snapshot.data![index];
                         return Card(
                           child: Column(
                             children: [
                               resuable(title: "id", value: data.id.toString()),
                               resuable(title: "id", value: data.name.toString()),
                               resuable(title: "id", value: snapshot.data![index].username.toString()),
                               resuable(title: "id", value: snapshot.data![index].email.toString()),
                               // resuable(title: "id", value: snapshot.data![index].address.city.toString()),
                               // resuable(title: "id", value: snapshot.data![index].address.geo.lat.toString()),
                             ],
                           ),
                         );
                       },);

                     }

                   },),
             )
        ],
      ),

    );
  }
}

class resuable extends StatelessWidget {
  String title, value;

  resuable({ required this.title, required this.value,

    super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),

        ],
      ),
    );
  }
}
