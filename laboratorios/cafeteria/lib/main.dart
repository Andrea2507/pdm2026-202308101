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
                children: [Text('Mi pedido', style: TextStyle(fontSize: 20)),
                ],
             ),
             Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                 
                ),
              ),
                Row(
                children: [
                  productoPedido(
                    'Café',
                    precio: 10,
                    cantidad: 0.bitLength,
                    aumentar: () {
                      setState(() {
                        puntosEquipo1++;
                      });
                    },
    
                  ),
                ]
                ),
                Row(
                children: [
                  productoPedido(
                    'Sándwich',
                    precio: 25,
                    cantidad: 0 
                  ),
                ]
                ),
                Row(
                children: [
                  productoPedido(
                    'Jugo',
                    precio: 12,
                    cantidad: 0 
                  ),
                ]
                )
             ],
            
          ),
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
           children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    nombre,
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    'Q${precio.toString()}',
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                   Expanded(
                  child: ElevatedButton(
                    onPressed: aumentar,
                    child: const Text('+1'),
                  ),
                ),
                  
                ],
              ),
            ]

           
         )
      ),  
  );
}

