
import 'package:flutter/material.dart';
import 'package:_deathend/splashscreen.dart';
import 'package:_deathend/details.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
    Widget build(BuildContext context)
{
return MaterialApp(
  home: SplashScreen(),
);
}
}


class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 35,
        width: 530,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(style: ButtonStyle(
        ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Details();
            })
            );
          },
          child: const Center(
            child: Text('Start', style: TextStyle(
              fontFamily: 'handjet',
              color: Colors.black,
              fontSize: 30,
            ),),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('-------do you accept your fate?--------', style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body:
      Center(
          child: Text('DeathEnd', style: TextStyle(
            fontFamily: 'handjet',
            fontSize: 70,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          )
      ),
    );
  }
}




