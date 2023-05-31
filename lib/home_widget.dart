import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_controller.dart';

// class HomeWidget extends StatelessWidget {
//   const HomeWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var controller = HomeController.of(context);
//
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       body: Center(
//         child: Text('VOCÊ CLICOU: ${controller.value}'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () {
//           controller.increment();
//         },
//       ),
//     );
//   }
// }


// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//  final controller = TextEditingController();
//
//  final list = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Minha Primeira Tela"),
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                  Expanded(child: TextField(controller: controller,)),
//                  IconButton(
//                    onPressed: () {
//                      final text = controller.text;
//                      setState(() {
//                        list.add(text);
//                      });
//                      controller.clear();
//                    },
//                    icon: Icon(Icons.add),
//                  ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: list.length,
//                 itemBuilder: (context, index) {
//                   final item = list[index];
//
//                   return ListTile(
//                     title: Text(item),
//                   );
//                 }
//               ),
//             ),
//           ],
//         )
//     );
//   }
// }

//=========Stack============

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = TextEditingController();

  final list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha Primeira Tela"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/img/back.jpg',
            fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 200,
                  textColor: Colors.white,
                  style: FlutterLogoStyle.horizontal,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Entrar'),
                ),
              ]
            )
          ),

        ],
      ),
    );
  }
}
