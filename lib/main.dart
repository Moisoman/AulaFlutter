import 'package:flutter/material.dart';

void main(){
    runApp(MeuApp());
}

// class MeuApp extends StatelessWidget{
//   MeuApp({super.key});
//   int _counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:Scaffold(
//         appBar: AppBar(
//           title: Center(
//             child:  Text("xingxong")
//           ),
//           backgroundColor: Color.fromARGB(122, 201, 99, 37),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: .center,
//             children: [
//               Text('$_counter'),
//               FloatingActionButton(onPressed: (){ _counter++;},
//               child: const Icon(Icons.add),
//               ),
//               Column(
//                 mainAxisAlignment: .center,
//                 children: [
//                   const Text("COLUNA"),
//                   Row(
//                     mainAxisAlignment: .end,
//                     children: [
//                       const Text("LINHA")
//                     ],
//                   )
//                 ],
//               )
//             ],
//           ),
          
//         ),
        
//       )
//     );
//   }
// }


class MeuApp extends StatelessWidget{
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Titulo",
      home: const MinhaHomePage(title: "Testando"),
      color: Color.fromARGB(255, 151, 56, 8)
      );

  }
}

class MinhaHomePage extends StatefulWidget{
  const MinhaHomePage({super.key, required this.title});

  final String title;

  @override
  State<MinhaHomePage> createState() => _MinhaHomePageState();

}

class _MinhaHomePageState extends State<MinhaHomePage>{
  int _counter = 0;
  String texto = "Alterar titulo";
  // void incrementar(){
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(195, 143, 6, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: .center,
          children: [
            Text(texto),
            _counter == 1 ? 
            const Text("O titulo foi alterado 1 vez") :
            const Text("Quantidade de vezes que o titulo foi alterado:"),
            Text('$_counter'),

            ElevatedButton(onPressed: (){setState(() {
              texto = "Titulo Original";
              _counter++;
            });},
            child: Icon(Icons.abc)
            ),

             FloatingActionButton(
              onPressed: (){setState(() {
              texto = "titulo alterado";
                _counter++;
              });
              },
              child: const Icon(Icons.add),)]
        )
    ));
      
}
}
