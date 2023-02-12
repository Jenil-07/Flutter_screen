import 'package:counter_button/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:screen_1/second.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _NewState();
}

class _NewState extends State<Demo> {
  int _counterValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green.shade900,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70,left: 25),
            child: Row(
              children: [
                Column(
                  children: [
                    // Container(height: 30,width: 30,decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(5),color: Colors.white.withOpacity(0.2),
                    // ),
                    //
                    //   child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white),)
                    Container(height: 30,width: 30,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),color: Colors.white.withOpacity(0.2),),
                      padding: EdgeInsets.only(left: 0),
                      child: InkWell(
                        onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return New();
                          }
                          )
                          );
                        },
                        child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 84),
                      child: Container(
                        child: Text('Food Details',style: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.4)),),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 81,right: 25),
                  child: Column(
                    children: [
                      Container(height: 30,width: 30,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),color: Colors.white.withOpacity(0.2),
                      ),
                        child: Icon(Icons.favorite_border,color: Colors.white),)
                    ],
                  ),
                ),
              ],
            ),
          ),

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(height: 700,width: 400),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Container(
                  height: 540,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ),

              Center(
                  child: Container(height: 330,
                    width: 275,
                    child: Image.asset('asset/image/images (1)_prev_ui.png',fit: BoxFit.fitWidth,),)
              ),

              Padding(
                padding: const EdgeInsets.only(top: 315,),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Container(child: Text('Avocada Salad ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2,right: 27),
                              child: Container(child: Text('@550only',style: TextStyle(fontSize: 20,color: Colors.green.shade900),),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(padding: EdgeInsets.only(left: 60),
                          child: Container(color: Colors.green.shade900,
                            child: CounterButton(
                              loading: false,
                              onChange: (int val) {
                                setState(() {
                                  _counterValue = val;
                                });
                              },
                              count: _counterValue,
                              countColor: Colors.white,
                              buttonColor: Colors.white,
                              progressColor: Colors.white,),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 400,left: 23),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(child: Icon(Icons.star,color: Colors.amber,)),
                        Container(child: Text('4.5')),
                        Container(padding: EdgeInsets.only(left: 70),child: Icon(Icons.water_drop_rounded,color: Colors.red,),),
                        Container(child: Text('100 Kcal')),
                        Container(padding: EdgeInsets.only(left: 55),child: Icon(Icons.timer,color: Colors.amber,),),
                        Container(child: Text('20min')),
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 455,left: 23),
                child: Container(child: Text('About Food',style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold,),),),
              ),

              Container(padding: EdgeInsets.only(top: 500,left: 23,right: 25),
                child: ReadMoreText(
                  'comfort food is heartly. when heart are heavy, they need gravitational and emotional and equilibrium.... food that reassures us that we will survive.',
                  trimLines: 3,
                  colorClickableText: Colors.purple,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read More',
                  trimExpandedText: 'Read Less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.green.shade900),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 600),
                child: Center(
                  child: Container(height: 50,width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.green.shade900),
                    child: Center(child: Text('Add to Cart',style: TextStyle(fontSize: 20,color: Colors.white),)),
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
