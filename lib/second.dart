import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:screen_1/third.dart';
import 'package:http/http.dart' as http;

import 'add.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 20),
              child: Row(
                children: [
                  Container(height: 40,width: 40,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green.shade900,
                    ),
                    child: Icon(Icons.menu,color: Colors.white,),
                  ),
                  Container(padding: EdgeInsets.only(left: 70,),
                    child: Icon(Icons.location_on,color: Colors.green.shade900,),
                  ),
                  Container(
                    child: Text('Mangura,BD',style: TextStyle(fontSize: 15),),
                  ),
                  Container(padding: EdgeInsets.only(left: 66,),
                    child: Container(
                      height: 40,width: 40,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green.shade900,
                      ),
                      child: Image.asset('asset/image/download (4).jpg',fit: BoxFit.fitHeight,),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20),
              child: Row(
                children: [
                  Container(child: Text('Hi Rinku',style: TextStyle(fontSize: 20,color: Colors.green.shade900),),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 20),
              child: Row(
                children: [
                  Container(child: Text('Find Your food',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
                ],
              ),
            ),
            Container(padding: EdgeInsets.only(left: 22,right: 20,top: 15),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 10,horizontal: 15,),
                      hintText: "Search here",
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 23),
              child: Row(
                children: [
                  Container(child: Text('Food',style: TextStyle(color: Colors.green,fontSize: 17),),),
                  Container(padding: EdgeInsets.only(left: 30),
                    child: Text('Fruits',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
                  ),
                  Container(padding: EdgeInsets.only(left: 30),
                    child: Text('Vegetables',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
                  ),
                  Container(padding: EdgeInsets.only(left: 30),
                    child: Text('Grocery',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  Center(child: Container(height: 475,)),
                  Center(child: Container(height: 430,width:  379 ,
                    child: FutureBuilder<http.Response>(
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: jsonDecode(snapshot.data!.body.toString()).length,
                            itemBuilder: (context, index){
                              return  Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(padding: EdgeInsets.only(top: 0),width: 187,height: 270,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Card(color: Colors.black.withOpacity(0.1),
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              shape:
                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(MaterialPageRoute(builder:(Context){
                                                    return Demo();
                                                  }));
                                                },
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Stack(
                                                      alignment: Alignment.bottomLeft,
                                                      children: [
                                                        Container(
                                                          child: Image(
                                                            height: 155,
                                                            width: double.infinity,
                                                            image: NetworkImage((jsonDecode(
                                                                snapshot.data!.body.toString())[index]
                                                            ['avatar'])
                                                                .toString()),
                                                            fit: BoxFit.fitHeight,
                                                          ),
                                                        ),
                                                        Positioned(top: 2,right: 6,child: Container(child: Icon(Icons.favorite_border,color: Colors.black54,),))
                                                      ],
                                                    ),
                                                    Container(
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
                                                        child: Row(
                                                          children: [
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(padding: EdgeInsets.only(left: 8),
                                                                  child: Text(
                                                                    (jsonDecode(snapshot.data!.body.toString())[index]['foodname']).toString(),style: TextStyle(color: Colors.purple.shade800),),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      child: Text((jsonDecode(snapshot.data!.body.toString())[index]['time']).toString(),style: TextStyle(color: Colors.black),),
                                                                    ),
                                                                    Container(
                                                                        child: Text('min',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                                    ),
                                                                    Container(padding: EdgeInsets.only(left: 30),
                                                                      child: Icon(Icons.star,color: Colors.amber,),
                                                                    ),
                                                                    Container(
                                                                      child: Text((jsonDecode(snapshot.data!.body.toString())[index]['rating']).toString(),style: TextStyle(color: Colors.black),),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(padding: EdgeInsets.only(top: 0),
                                                                      child: Text((jsonDecode(snapshot.data!.body.toString())[index]['price']).toString(),style: TextStyle(color: Colors.purple.shade800),),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets.only(left: 5),
                                                                      child: IconButton(
                                                                        icon: Center(child: Icon(Icons.delete,color: Colors.white,size: 20,)),
                                                                        onPressed: () {
                                                                          deleteFood((jsonDecode(snapshot.data!.body
                                                                              .toString())[index]['id']))
                                                                              .then(
                                                                                (value) {
                                                                              setState(() {});
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets.only(left: 2),
                                                                      child: IconButton(
                                                                        icon: Center(child: Icon(Icons.add,color: Colors.white,size: 20,)),
                                                                        onPressed: () {

                                                                          Navigator.of(context)
                                                                              .push(
                                                                            MaterialPageRoute(
                                                                              builder: (context) => AddFood(jsonDecode(
                                                                                  snapshot.data!.body.toString())[index]),
                                                                            ),
                                                                          )
                                                                              .then(
                                                                                (value) {
                                                                              if (value == true) {
                                                                                setState(() {});
                                                                              }
                                                                            },
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(padding: EdgeInsets.only(top: 0),width: 187,height: 270,
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Card(color: Colors.black.withOpacity(0.1),
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              shape:
                                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.of(context).push(MaterialPageRoute(builder:(Context){
                                                    return Demo();
                                                  }));
                                                },
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Stack(
                                                      alignment: Alignment.bottomLeft,
                                                      children: [
                                                        Container(
                                                          child: Image(
                                                            height: 155,
                                                            width: double.infinity,
                                                            image: NetworkImage((jsonDecode(
                                                                snapshot.data!.body.toString())[index]
                                                            ['avatar'])
                                                                .toString()),
                                                            fit: BoxFit.fitHeight,
                                                          ),
                                                        ),
                                                        Positioned(top: 2,right: 6,child: Container(child: Icon(Icons.favorite_border,color: Colors.black54,),))
                                                      ],
                                                    ),
                                                    Container(
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
                                                        child: Row(
                                                          children: [
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Container(padding: EdgeInsets.only(left: 8),
                                                                  child: Text(
                                                                    (jsonDecode(snapshot.data!.body.toString())[index]['foodname']).toString(),style: TextStyle(color: Colors.purple.shade800),),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(
                                                                      child: Text((jsonDecode(snapshot.data!.body.toString())[index]['time']).toString(),style: TextStyle(color: Colors.black),),
                                                                    ),
                                                                    Container(
                                                                        child: Text('min',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                                    ),
                                                                    Container(padding: EdgeInsets.only(left: 30),
                                                                      child: Icon(Icons.star,color: Colors.amber,),
                                                                    ),
                                                                    Container(
                                                                      child: Text((jsonDecode(snapshot.data!.body.toString())[index]['rating']).toString(),style: TextStyle(color: Colors.black),),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Container(padding: EdgeInsets.only(top: 0),
                                                                      child: Text((jsonDecode(snapshot.data!.body.toString())[index]['price']).toString(),style: TextStyle(color: Colors.purple.shade800),),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets.only(left: 5),
                                                                      child: IconButton(
                                                                        icon: Center(child: Icon(Icons.delete,color: Colors.white,size: 20,)),
                                                                        onPressed: () {
                                                                          deleteFood((jsonDecode(snapshot.data!.body
                                                                              .toString())[index]['id']))
                                                                              .then(
                                                                                (value) {
                                                                              setState(() {});
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsets.only(left: 2),
                                                                      child: IconButton(
                                                                        icon: Center(child: Icon(Icons.add,color: Colors.white,size: 20,)),
                                                                        onPressed: () {

                                                                          Navigator.of(context)
                                                                              .push(
                                                                            MaterialPageRoute(
                                                                              builder: (context) => AddFood(jsonDecode(
                                                                                  snapshot.data!.body.toString())[index]),
                                                                            ),
                                                                          )
                                                                              .then(
                                                                                (value) {
                                                                              if (value == true) {
                                                                                setState(() {});
                                                                              }
                                                                            },
                                                                          );

                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                      future: getFood(),
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<http.Response> getFood() async{
    var response = await http
        .get(Uri.parse('https://63f4d5b22213ed989c4ba972.mockapi.io/api'));
    print(response.body.toString());
    return response;
  }

  Future<void> deleteFood(id) async {
    var response1 = await http.delete(
        Uri.parse('https://63f4d5b22213ed989c4ba972.mockapi.io/api/$id'));
  }
}