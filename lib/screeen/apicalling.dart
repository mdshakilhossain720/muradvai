import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import '../models/user.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  Future<List<UserNumber>?> getApi() async {
    final respon=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if(respon.statusCode==200){
      print(respon.body);
      return userNumberFromJson(respon.body);

    }else{
      return null;
    }
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api"),),
      body:
         FutureBuilder(

            future: getApi(), builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              else{
                return ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: snapshot.data!.length,
                  itemBuilder:(context, index) {
                    return InkWell(
                      onTap: (){},
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          resuable(title: "id", value: snapshot.data![index].id.toString()),
                            resuable(title: "title", value: snapshot.data![index].title.toString()),

                          ],
                        ),
                      ),
                    );
                  
                },);
              }
            },),

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
          SizedBox(width: 30,),
          Expanded(
            child: Text(value,
              overflow: TextOverflow.ellipsis,
            ),
          ),
         
        
        ],
      ),
    );
  }
}

