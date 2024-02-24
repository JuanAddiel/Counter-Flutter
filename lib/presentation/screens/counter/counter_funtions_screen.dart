import 'package:flutter/material.dart';

//Estos son el corazon de cualquier animacion a utilizar en flutter.
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
            child: Text(
              "Counter Clicks",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),

            ),
          ),
          backgroundColor: const Color.fromARGB(255, 120, 253, 222),
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.refresh_sharp),
          //     onPressed: () {
          //       setState(() {
          //         clickCounter = 0;
          //       });
          //     },
          //   ),
          // ]
          ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Column(
          //Para lograr que el hijo coja el centro del padre usamos la siguiente propiedad
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.w100),
            ),
            Text(
              (clickCounter != 1) ? "clicks" : "click",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color:const Color.fromARGB(255, 120, 253, 222),
      // ),
      //Para agregar esos botones flotantes utilizamos esto
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              }),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              icon: Icons.plus_one_outlined,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              }),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if(clickCounter == 0)return;
                  clickCounter--;
                });
              }),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      backgroundColor: const Color.fromARGB(255, 120, 253, 222),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
