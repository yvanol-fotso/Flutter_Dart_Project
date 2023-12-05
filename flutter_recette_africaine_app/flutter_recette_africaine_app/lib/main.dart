import 'package:flutter/material.dart';
import 'recette.dart';
import 'detail_recette.dart';

void main() {
  runApp(const RecetteCuisineApp());
}

class RecetteCuisineApp extends StatelessWidget {
  const RecetteCuisineApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //pharse 2
    final ThemeData theme = ThemeData();

    //pharse 3
    return MaterialApp(
      //pharse 4

      title: 'Recettet de plats africains',

      //pharse 5

      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Recette de plats africain'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //pharse 1
    return Scaffold(
      //pharse 2
      appBar: AppBar(
        title: Text(widget.title),
      ),

      // pharse 3

      body: SafeArea(
        //a faire :remplacer le child:container()

        //pharse 4

        child: ListView.builder(
          //PHARSE 5
          itemCount: Recette.samples.length,

          //pharse 6
          itemBuilder: (BuildContext context, int index) {
            //pharse 7
            return GestureDetector(
              //pharse 8
              onTap: () {
                //pharse 9

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      //pharse 10

                      return DetailRecette(recette: Recette.samples[index]);
                    },
                  ),
                );
              },

              child: buildRecetteCuisineCard(Recette.samples[index]),
            );
          },
        ),
      ),
    );
  }

  // a faire ajouter buildRecetteCuisineCard() ici
  Widget buildRecetteCuisineCard(Recette recipe) {
    return Card(
      //pharse 1
      elevation: 2.0,

      //pharse 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

      //pharse 3

      child: Padding(
        padding: const EdgeInsets.all(16.0),

        //phasre 4

        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),

            //pharse 5

            const SizedBox(
              height: 14.0,
            ),

            //pharse 6

            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Platino',
              ),
            )
          ],
        ),
      ),
    );
  }
}
