import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
const kFondo = Color.fromARGB(255, 221, 219, 219);
const kTexto = Color.fromARGB(255, 13, 14, 13);
const kSuperficie = Color.fromARGB(255, 255, 255, 255);
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inkash',
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
                children: [Text('Profile', style: TextStyle(fontSize: 20, color: kTexto)),
                ],
             ),
             Center(
                child: SizedBox(
                  width: 180.0,
                  height: 180.0,
                  child: Stack(
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: const Color.fromARGB(255, 94, 89, 104),
                        size: 180.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                      Positioned(
                        right: 8,
                        bottom: 8,
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: kSuperficie,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Icon(
                            Icons.edit_outlined,
                            color: kTexto,
                            size: 34,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                Row(
                children: [
                  tarjetaHero('Personal info', 'Edit'),
                  
                ],
              ),
                 const SizedBox(height: 40),
                 Row(
                children: [
                  tarjetaHero2('Account Info', ''),
                  
                  
                ],
              ),
            ]
            
            
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kSuperficie,
          selectedItemColor: kTexto,
          unselectedItemColor: kTexto,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.transfer_within_a_station_sharp, size: 34),
              label: 'Transfer',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      )
    );
  }
}


Widget tarjetaHero(String title, String body) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(18),
      color: Colors.white,
     
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, color: kTexto,
                ),
              ),
              const Spacer(),
              Text(body,style: TextStyle(fontSize: 15,color: kTexto,
                ),
              ),
            ],
          ),

          const SizedBox(height: 22),

          filaInfo(
            Icons.person_outline,
            'Name',
            'Terry Melton',
            
            
          ),

          const SizedBox(height: 16),

          filaInfo(
            Icons.email_outlined,
            'E-mail',
            'melton89@gmail.com',
          ),

          const SizedBox(height: 16),

          filaInfo(
          
            Icons.phone_outlined,
            'Phone number',
            '+1 201 555-0123',
          ),

          const SizedBox(height: 16),

          filaInfo(
            Icons.home_outlined,
            'Home address',
            '70 Raineu Street, Apartment 146,\nAustin TX 78701',
          ),
        ],
      ),
    ),
  );
}


Widget filaInfo(

  IconData icon,
  String title,
  String subtitle,
  
) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title, style: TextStyle(color: kTexto)),
    subtitle: Text(subtitle, style: TextStyle(color: kTexto)),
   
  );

}
Widget tarjetaHero2(String title, String body) {
  return Expanded(
    child: Container(
      color: kSuperficie,
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
                style: TextStyle(fontSize: 20, color: kTexto,
                ),),
          
        ],
        
        
      ),
      
      
    ),
    
  );
}
