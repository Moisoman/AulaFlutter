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
  //int _counter = 0;
  String texto = "Consultar";
  String inputUsuario = "";
  final TextEditingController inputController = TextEditingController();

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
            Container(
              padding: EdgeInsetsGeometry.all(50),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 5, 167, 241),
                borderRadius: BorderRadius.circular(45)
              ),
              child: Text(texto),
            ),

            SizedBox(
              width: 250,
              child: 
               TextField(
                  controller: inputController,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))),
              ),
            )),

            ElevatedButton(
              onPressed: (){setState(() {
                inputUsuario = "Olá ${inputController.text}";

              });
              }, 
              child: Icon(Icons.agriculture_sharp)),

            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  inputUsuario, 
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              Text(
                inputUsuario,
                style: TextStyle(fontSize: 50,fontWeight: FontWeight.w300)),


            // ElevatedButton(onPressed: (){setState(() {
            //   texto = (texto == "Titulo Original") ? "Titulo Alterado" : "Titulo Original";
            //   _counter++;
            // });},
            // child: Icon(Icons.abc)
            // ),
            ]
        )
    ));
      
  }
}

class CardNome extends StatelessWidget{
  final String nome;
  final int idade;

  const CardNome({
    super.key, 
    this.nome = "Moisossauro", 
    this.idade = 123,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Text(this.nome),
          Text(this.idade.toString())
        ],
      ),
    );
  }


}
