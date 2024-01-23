import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
              children: [
      Center(
        child: Text(
          "0.0 Kg",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      Positioned(
        bottom: 0,
        child: IconButton(onPressed: (){}, icon: const Icon(Icons.add)))
              ],
            ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // T
    );
  }
}
