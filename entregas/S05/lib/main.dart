import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
        home: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: const [
               Column(
              
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  
                
                [   Text(
                    'Hola Marcos!!',
                    
                    style: TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.w500,
                    ),
                  ), 
                   Text(
                    'Has realizado el 45% de tus taresas',
                    style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    ),
                  ), 
                ],
                  
                ), 
                
            ]
          )
        )
      )
    );
  }
}
