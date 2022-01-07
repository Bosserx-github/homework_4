import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('GUESS THE NUMBER')),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            color: Colors.pinkAccent,
            child: Center(


              child: Column(

                //mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/guess_logo.png', width: 150.0,),


                      Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('GUESS', style: TextStyle(
                                  fontSize: 60.0, color: Colors.deepPurpleAccent),
                                textAlign: TextAlign.center,),
                              Text('THE NUMBER', style: TextStyle(
                                  fontSize: 30.0, color: Colors.deepPurple),
                                textAlign: TextAlign.center,),
                            ],
                          )
                      ),


                    ],
                  ),

                  SizedBox(
                    width: 300.0,
                    height: 200.0,
                    //ElevatedButton(onPressed: () {}, child: Text('RANDOM')),


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(),


                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ElevatedButton(onPressed: () {}, child: Text('GUESS')),
                        ),
                        /* TextButton(

             child: Text('TEST'),
              onPressed: () {  },
              ),*/
                      ],
                    ),

                  ),
                ],

              ),
            ),
          )
      ),

    );

  }
}


