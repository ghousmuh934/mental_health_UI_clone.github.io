// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mental_heath_app/util/exercise_tile.dart';

import '../util/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.email), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
        ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  
                  children: [
                    // Greating Row
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Hi, Ghous!
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, Ghous!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(height: 8,),
                    Text('10 Jan, 2020',
                    style: TextStyle(color: Colors.blue[100]),)
                  ],
                ),
      
                //Notification
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)

                  ),
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                )
                  ],
                ),
                //Search Bar
                SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5,),
                      Text('Search',
                      style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),

                SizedBox(height: 25,),

                // How do you feel?

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                    ),

                    Icon(Icons.more_horiz,
                    color: Colors.white,)
                  ],
                ),

                SizedBox(height: 25,),

                // 4 Different faces
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Bad
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😩',
                        ),
                        SizedBox(height: 8,),
                        Text('Bad',
                        style: TextStyle(
                          color: Colors.white,

                        ),)
                      ],
                    ),

                    //fine
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😊',
                        ),
                        SizedBox(height: 8,),
                        Text('Fine',
                        style: TextStyle(
                          color: Colors.white,

                        ),)
                      ],
                    ),

                    //well
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😃',
                        ),
                        SizedBox(height: 8,),
                        Text('Well',
                        style: TextStyle(
                          color: Colors.white,

                        ),)
                      ],
                    ),

                    //exellent
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '🥳',
                        ),
                        SizedBox(height: 8,),
                        Text('Excellent',
                        style: TextStyle(
                          color: Colors.white,

                        ),)
                      ],
                    ),
                    
                  ],
                )
                  ],
                ),
              ),

              SizedBox(height: 25,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(25.0),
                      topRight: const Radius.circular(25.0),
                    )
                  ),
                  padding: EdgeInsets.all(25),
                  
                  child: Center(
                    child: Column(
                      children: [
                        // Exercise Heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Exercise',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        SizedBox(height: 25,),
                        // Listview of excercise

                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercise: 16,
                                color: Colors.orange,
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercise: 8,
                                color: Colors.green,
                              ),
                              ExerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writing Skills',
                                numberOfExercise: 12,
                                color: Colors.pink,
                              ),
                              ExerciseTile(
                                icon: Icons.read_more,
                                exerciseName: 'Yoga Skills',
                                numberOfExercise: 20,
                                color: Color.fromARGB(255, 247, 223, 10),
                              ),
                              
                            ],
                        
                          ),
                        )


                      ],
                    ),

                  ),
                ) 
              )
            ],
          ),
        ),
      ),
    );
  }
}