import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
const kFondo = Color.fromARGB(255, 221, 219, 219);
const kTexto = Color.fromARGB(255, 13, 14, 13);
const kSuperficie = Color.fromARGB(255, 255, 255, 255);
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int puntosEquipo1 = 0;
  int puntosEquipo2 = 0; 

  String calcularGanador() {
    if (puntosEquipo1 > puntosEquipo2) {
      return 'Ganador: Equipo 1';
    }
    if (puntosEquipo2 > puntosEquipo1) {
      return 'Ganador: Equipo 2';
    }
    return 'Empate';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MARCADOR',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 238, 238, 238),
       
      ),
      
      home: Scaffold(
        
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(10.0), 
            children: [
            const SizedBox(height: 30),
             Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Marcador Deportivo', style: TextStyle(fontSize: 20, color: kTexto)),
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
                  tarjetaHero(
                    'Equipo 1',
                    puntos: puntosEquipo1,
                    estaGanando: puntosEquipo1 > puntosEquipo2,
                    onSumar: () {
                      setState(() {
                        puntosEquipo1++;
                      });
                    },
                    onRestar: () {
                      if (puntosEquipo1 > 0) {
                        setState(() {
                          puntosEquipo1--;
                        });
                      }
                    },
                  ),
                  const SizedBox(width: 10),
                  tarjetaHero('Equipo 2',
                  puntos: puntosEquipo2,
                    estaGanando: puntosEquipo2 > puntosEquipo1,
                    onSumar: () {
                      setState(() {
                        puntosEquipo2++;
                      });
                    },
                    onRestar: () {
                      if (puntosEquipo2 > 0) {
                        setState(() {
                          puntosEquipo2--;
                        });
                      }
                    },
                  
                  
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  calcularGanador(),
                  style: const TextStyle(fontSize: 22, color: kTexto),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      puntosEquipo1 = 0;
                      puntosEquipo2 = 0;
                    });
                  },
                  child: const Text('Reiniciar marcador', selectionColor: Color.fromARGB(31, 160, 7, 7),),
                ),
              ),
                
              
            ]
            
            
            )
        ),
        
      )
    );
  }
}


  Widget tarjetaHero(
    String title, {
    int puntos = 0,
    bool estaGanando = false,
    VoidCallback? onSumar,
    VoidCallback? onRestar,
  }) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kSuperficie,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: kFondo),
          
        ),
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
    
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 19,
                color: estaGanando ? Colors.green : kTexto,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$puntos',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: kTexto,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onSumar,
                    child: const Text('+1'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: onRestar,
                    child: const Text('-1'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



