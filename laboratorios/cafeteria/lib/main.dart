import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int cantidadCafe = 0;
  int cantidadSandwich = 0;
  int cantidadJugo = 0;

  double calcularTotal() {
    return cantidadCafe * 10.0 + cantidadSandwich * 25.0 + cantidadJugo * 12.0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurante',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: SizedBox(
              width: 500,
              child: ListView(
                padding: EdgeInsets.all(10.0),
                children: [
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Mi pedido', style: TextStyle(fontSize: 24)),
                    ],
                  ),
                  Center(child: SizedBox(width: 50.0, height: 24.0)),
                  Row(
                    children: [
                      productoPedido(
                        'Café',
                        precio: 10,
                        cantidad: cantidadCafe,
                        aumentar: () {
                          setState(() {
                            cantidadCafe++;
                          });
                        },
                        disminuir: () {
                          if (cantidadCafe > 0) {
                            setState(() {
                              cantidadCafe--;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      productoPedido(
                        'Sándwich',
                        precio: 25,
                        cantidad: cantidadSandwich,
                        aumentar: () {
                          setState(() {
                            cantidadSandwich++;
                          });
                        },
                        disminuir: () {
                          if (cantidadSandwich > 0) {
                            setState(() {
                              cantidadSandwich--;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: [
                      productoPedido(
                        'Jugo',
                        precio: 12,
                        cantidad: cantidadJugo,
                        aumentar: () {
                          setState(() {
                            cantidadJugo++;
                          });
                        },
                        disminuir: () {
                          if (cantidadJugo > 0) {
                            setState(() {
                              cantidadJugo--;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total', style: TextStyle(fontSize: 22)),
                      Text(
                        'Q${calcularTotal().toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          cantidadCafe = 0;
                          cantidadSandwich = 0;
                          cantidadJugo = 0;
                        });
                      },
                      child: const Text('Vaciar pedido'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget productoPedido(
  String nombre, {
  double precio = 0,
  int cantidad = 0,
  VoidCallback? disminuir,
  VoidCallback? aumentar,
}) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(nombre, style: const TextStyle(fontSize: 19)),
              Text(
                'Q${precio.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 19),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 80,
                child: ElevatedButton(
                  onPressed: disminuir,
                  child: const Text('-1'),
                ),
              ),
              const SizedBox(width: 16),
              Text('$cantidad', style: const TextStyle(fontSize: 19)),
              const SizedBox(width: 16),
              SizedBox(
                width: 80,
                child: ElevatedButton(
                  onPressed: aumentar,
                  child: const Text('+1'),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
