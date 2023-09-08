import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _contador = 0;
  
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colors.primary,
        title: const Text(
          'Mi primera aplicación',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 120,),
              const Text(
                'Contador',
                style: TextStyle(
                  fontSize: 32
                ),
              ),
              Text(
                '$_contador',
                style: const TextStyle(
                  fontSize: 78
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _contador = 0;
              });
            },
            child: const Icon(Icons.restart_alt),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (_contador != 0){
                  _contador--;
                } 
              });
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                 _contador++;
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      )

    );
  }
}
