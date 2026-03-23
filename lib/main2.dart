
import 'package:flutter/material.dart';

void main(){
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget{
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Titulo",
      home: const MinhaHomePage(title: "Testando"),
      );

  }
}

class MinhaHomePage extends StatefulWidget{
  const MinhaHomePage({super.key, required this.title})

  final String title;

  @override
  State<MinhaHomePage> createState() => _MinhaHomePageState();

}

class _MinhaHomePageState extends State<MinhaHomePage>{
  int _counter = 0;

  void incrementar(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: widget.title,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text("Quantidade de clicks:"),
            Text('$_counter')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementar,
        child: const Icon(Icons.add), 
        ),
    );
  }


}
