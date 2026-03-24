import 'package:flutter/material.dart';

void main(){
  int _counter = 0;
    runApp(MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Center(
            child:  Text("xingxong")
          ),
          backgroundColor: Color.fromARGB(122, 201, 99, 37),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: .center,
            children: [
              Text('$_counter'),
              FloatingActionButton(onPressed: (){ _counter++;},
              child: const Icon(Icons.add),
              ),
              Column(
                mainAxisAlignment: .center,
                children: [
                  const Text("COLUNA"),
                  Row(
                    mainAxisAlignment: .end,
                    children: [
                      const Text("LINHA")
                    ],
                  )
                ],
              )
            ],
          ),
          
        ),
        
      )
    )
  );
}
  

// class MeuApp extends StatelessWidget{
//   const MeuApp({super.key});

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: "Titulo",
//       home: const MinhaHomePage(title: "Testando"),
//       );

//   }
// }

// class MinhaHomePage extends StatefulWidget{
//   const MinhaHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MinhaHomePage> createState() => _MinhaHomePageState();

// }

// class _MinhaHomePageState extends State<MinhaHomePage>{
//   int _counter = 0;

//   void incrementar(){
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: .center,
//           children: [
//             const Text("Quantidade de clicks:"),
//             Text('$_counter')
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: incrementar,
//         child: const Icon(Icons.add), 
//         ),
//     );
//   }


// }
