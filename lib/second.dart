import 'package:flutter/material.dart';
import 'package:screen_1/third.dart';


class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                Center(child: Container(height: 430,width:  330,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(padding: EdgeInsets.only(top: 0),width: 165,height: 255,
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
                                                child: Ink.image(
                                                  height: 155,
                                                  image: AssetImage(
                                                      'asset/image/download (1)_prev_ui.png'
                                                  ),
                                                  fit: BoxFit.fitWidth,
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
                                                          child: Text('Avocada salad',style: TextStyle(fontSize: 17,color: Colors.black),)
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                              child: Text('20 min',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                          Container(padding: EdgeInsets.only(left: 30),
                                                            child: Icon(Icons.star,color: Colors.amber,),
                                                          ),
                                                          Container(
                                                              child: Text('4.5',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(padding: EdgeInsets.only(top: 5),
                                                            child: Text('@599',style: TextStyle(color: Colors.purple),),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 60),
                                                            child: Container(padding: EdgeInsets.only(left: 0),height: 25,width: 25,
                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
                                                              child: Icon(Icons.add,color: Colors.white,),
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
                              Container(padding: EdgeInsets.only(top: 0),width: 165,height: 255,
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Card(color: Colors.black.withOpacity(0.1),
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Container(
                                                child: Ink.image(
                                                  height: 155,
                                                  image: AssetImage(
                                                      'asset/image/download (5)_prev_ui.png'
                                                  ),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                              Positioned(top: 2,right: 6,child: Container(child: Icon(Icons.favorite,color: Colors.red,),))
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
                                                          child: Text('Patato salad',style: TextStyle(fontSize: 17,color: Colors.black),)
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                              child: Text('30 min',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                          Container(padding: EdgeInsets.only(left: 30),
                                                            child: Icon(Icons.star,color: Colors.amber,),
                                                          ),
                                                          Container(
                                                              child: Text('4.5',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(padding: EdgeInsets.only(top: 5),
                                                            child: Text('@799',style: TextStyle(color: Colors.purple),),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 60),
                                                            child: Container(padding: EdgeInsets.only(left: 0),height: 25,width: 25,
                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
                                                              child: Icon(Icons.add,color: Colors.white,),
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
                              Container(padding: EdgeInsets.only(top: 0),width: 165,height: 255,
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Card(color: Colors.black.withOpacity(0.1),
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Container(
                                                child: Ink.image(
                                                  height: 155,
                                                  image: AssetImage(
                                                      'asset/image/download (1)_prev_ui.png'
                                                  ),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                              Positioned(top: 2,right: 6,child: Container(child: Icon(Icons.favorite,color: Colors.red,),))
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
                                                          child: Text('Avocada salad',style: TextStyle(fontSize: 17,color: Colors.black),)
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                              child: Text('20 min',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                          Container(padding: EdgeInsets.only(left: 30),
                                                            child: Icon(Icons.star,color: Colors.amber,),
                                                          ),
                                                          Container(
                                                              child: Text('4.5',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(padding: EdgeInsets.only(top: 5),
                                                            child: Text('@599',style: TextStyle(color: Colors.purple),),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 60),
                                                            child: Container(padding: EdgeInsets.only(left: 0),height: 25,width: 25,
                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
                                                              child: Icon(Icons.add,color: Colors.white,),
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
                              Container(padding: EdgeInsets.only(top: 0),width: 165,height: 255,
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Card(color: Colors.black.withOpacity(0.1),
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Container(
                                                child: Ink.image(
                                                  height: 155,
                                                  image: AssetImage(
                                                      'asset/image/images (1)_prev_ui (1).png'
                                                  ),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                              Positioned(top: 2,right: 6,child: Container(child: Icon(Icons.favorite,color: Colors.red,),))
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
                                                          child: Text('Mix salad',style: TextStyle(fontSize: 17,color: Colors.black),)
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                              child: Text('30 min',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                          Container(padding: EdgeInsets.only(left: 30),
                                                            child: Icon(Icons.star,color: Colors.amber,),
                                                          ),
                                                          Container(
                                                              child: Text('4.2',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(padding: EdgeInsets.only(top: 5),
                                                            child: Text('@499',style: TextStyle(color: Colors.purple),),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 60),
                                                            child: Container(padding: EdgeInsets.only(left: 0),height: 25,width: 25,
                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
                                                              child: Icon(Icons.add,color: Colors.white,),
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
                              Container(padding: EdgeInsets.only(top: 0),width: 165,height: 255,
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Card(color: Colors.black.withOpacity(0.1),
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Container(
                                                child: Ink.image(
                                                  height: 155,
                                                  image: AssetImage(
                                                      'asset/image/images (1)_prev_ui.png'
                                                  ),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                              Positioned(top: 2,right: 6,child: Container(child: Icon(Icons.favorite,color: Colors.red,),))
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
                                                          child: Text('fruites salad',style: TextStyle(fontSize: 17,color: Colors.black),)
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                              child: Text('30 min',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                          Container(padding: EdgeInsets.only(left: 30),
                                                            child: Icon(Icons.star,color: Colors.amber,),
                                                          ),
                                                          Container(
                                                              child: Text('4.3',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(padding: EdgeInsets.only(top: 5),
                                                            child: Text('@499',style: TextStyle(color: Colors.purple),),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 60),
                                                            child: Container(padding: EdgeInsets.only(left: 0),height: 25,width: 25,
                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
                                                              child: Icon(Icons.add,color: Colors.white,),
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
                              Container(padding: EdgeInsets.only(top: 0),width: 165,height: 255,
                                child: Padding(
                                  padding: const EdgeInsets.only(),
                                  child: Card(color: Colors.black.withOpacity(0.1),
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    shape:
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Container(
                                                child: Ink.image(
                                                  height: 155,
                                                  image: AssetImage(
                                                      'asset/image/images (1)_prev_ui (1).png'
                                                  ),
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                              Positioned(top: 2,right: 6,child: Container(child: Icon(Icons.favorite,color: Colors.red,),))
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
                                                          child: Text('Mix salad',style: TextStyle(fontSize: 17,color: Colors.black),)
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                              child: Text('30 min',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                          Container(padding: EdgeInsets.only(left: 30),
                                                            child: Icon(Icons.star,color: Colors.amber,),
                                                          ),
                                                          Container(
                                                              child: Text('4.2',style: TextStyle(color: Colors.black.withOpacity(0.6)),)
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(padding: EdgeInsets.only(top: 5),
                                                            child: Text('@499',style: TextStyle(color: Colors.purple),),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left: 60),
                                                            child: Container(padding: EdgeInsets.only(left: 0),height: 25,width: 25,
                                                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
                                                              child: Icon(Icons.add,color: Colors.white,),
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
                    ),
                  ),
                )),



                Container(
                  child: Row(
                    children: [
                      Container(padding: EdgeInsets.only(top: 440,left: 23),
                        child: Icon(Icons.home,color: Colors.green.shade900,),
                      ),
                      Container(padding: EdgeInsets.only(top: 440,left: 45),
                        child: Icon(Icons.message,color: Colors.black,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 400,left: 50),
                        child: Container(
                          height: 30,width: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green.shade900),
                          child: Icon(Icons.shopping_cart,color: Colors.white,),
                        ),
                      ),
                      Container(padding: EdgeInsets.only(top: 440,left: 52),
                        child: Icon(Icons.notifications,color: Colors.black,),
                      ),
                      Container(padding: EdgeInsets.only(top: 440,left: 47),
                        child: Icon(Icons.favorite_border,color: Colors.black,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
