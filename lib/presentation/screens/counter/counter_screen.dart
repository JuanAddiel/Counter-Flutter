import 'package:flutter/material.dart';


//Estos son el corazon de cualquier animacion a utilizar en flutter.
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}



class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Counter Screen",style: TextStyle(
            color: Colors.white
          ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child:  Column(
          //Para lograr que el hijo coja el centro del padre usamos la siguiente propiedad
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('$clickCounter',style: const TextStyle(fontSize: 80, fontWeight: FontWeight.w100),),
            Text((clickCounter != 1)?"clicks":"click",style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w100),)
          ],
        ),
      ),
      //Para agregar esos botones flotantes utilizamos esto
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          clickCounter++;
          });
        },
        child: const Icon(
          Icons.plus_one,
          ),
      ),
      
    );
  }
}