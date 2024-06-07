import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  double height=140;
  bool Male=false;
  bool Female=false;
  int age=20;
  int weight=40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 30,
       backgroundColor: Color(0xffC6DCBA),
       title: Text('BMI Calculator',
         style: TextStyle(
           fontSize: 28.0,
           fontWeight: FontWeight.bold,
           color: Colors.white,
         ),
       ),
     ),
      backgroundColor: Color(0xffD7E4C0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              children: [
                Expanded(
                    child:
                    Container(
                      //margin: EdgeInsets.all(80),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Male?Color(0xffA3C9AA):Colors.black,
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.male,
                              size: 100,
                              color: Colors.white,
                            ),

                            onPressed: ()
                            {
                              setState(() {
                                Male=true;
                                Female=false;
                              });
                            },
                          ),
                          Text('Male',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                ),
              const SizedBox(width: 40,),
                 Expanded(
                    child: Container(
                     // margin: EdgeInsets.all(80),
                      decoration: BoxDecoration(
                        color: Female?Color(0xffA3C9AA):Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        children: [
                          IconButton(

                            onPressed: ()
                            {
                              setState(() {
                                Female=true;
                                Male=false;
                              });
                            },
                            icon: Icon(
                              Icons.female,
                              size: 100,
                              color: Colors.white,
                            ),
                          ),
                          Text('Female',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),




              ],
            ),
          ),
          Text('HEIGHT',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${height.toStringAsFixed(0)}',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 5,),
              Text('CM',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Slider(
            activeColor: Colors.black,
            min: 140,
              max: 230,
              value: height,
              onChanged:
              (value)
              {

                setState(() {
                  height=value;
                });
              }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('AGE',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text('$age',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.black,
                          mini: true,
                          heroTag: 'add',
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed:
                            ()
                        {
                         setState(() {
                           if(age>=20)
                             age++;
                         });
                        },
                        ),
                        SizedBox(width: 5,),
                        FloatingActionButton(
                          backgroundColor: Colors.black,
                          mini: true,
                          heroTag: 'remove',
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          onPressed:
                              ()
                          {
                            setState(() {
                             if(age>20)
                               age--;

                            });
                          },
                        ),
                      ],
                    ),
                  ),




                ],
              ),

              Column(
                children: [
                  Text('WEIGHT',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text('$weight',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        FloatingActionButton(
                          backgroundColor: Colors.black,
                          mini: true,
                          heroTag: 'add',
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed:
                              ()
                          {
                            setState(() {
                              if(weight>=40)
                                weight++;
                            });
                          },
                        ),
                        SizedBox(width: 5,),
                        FloatingActionButton(
                          backgroundColor: Colors.black,
                          mini: true,
                          heroTag: 'remove',
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          onPressed:
                              ()
                          {
                            setState(() {
                              if(weight>40)
                                weight--;
                            });
                          },
                        ),
                      ],
                    ),
                  ),




                ],
              ),

            ],
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
              onPressed:
              ()
          {
           setState(() {
             showDialog(context: context,
                 builder: (context)=>AlertDialog(
                   title: Text(
                     'BMI Result',
                     style: TextStyle(

                       color: Colors.black,
                       fontSize: 30,
                       fontWeight: FontWeight.w500,
                     ),
                   ),
                   content: Text(
                     '${weight/pow(height/100,2).round()}',
                     style: TextStyle(
                       color: Colors.grey.withOpacity(0.6),

                     ),
                   ),
                 ),
             );
           });
          },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w200,
                ),
              )),

        ],
      ),

    );
  }
}


