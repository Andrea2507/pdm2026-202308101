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
      title: 'Restaurante',
      theme: ThemeData(
 
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),

      home: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10.0), 
             children: [
            const SizedBox(height: 30),
             Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Marcador Deportivo', style: TextStyle(fontSize: 20)),
                ],
             ),
             ]
          )
          ),
      ),
     
    );
  }
}

Widget productoPedido(
  String nombre,{
  double precio = 0,
  int cantidad = 0,
  VoidCallback? disminuir,
  VoidCallbackAction? aumentar,
  }
){
  return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(14),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
         )
      ),  
  );
}

