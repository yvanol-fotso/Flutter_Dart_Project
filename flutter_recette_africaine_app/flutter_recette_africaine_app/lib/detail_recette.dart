import 'package:flutter/material.dart';
import 'recette.dart';

class DetailRecette extends StatefulWidget {
  final Recette recette;

  const DetailRecette({Key? key, required this.recette}) : super(key: key);

  @override
  _RecetteDetailState createState() {
    return _RecetteDetailState();
  }
}

class _RecetteDetailState extends State<DetailRecette> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recette.label),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recette.imageUrl)),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.recette.label,
              style: const TextStyle(fontSize: 18),
            ),
            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recette.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recette.ingredients[index];
                  // 9
                  return Text('${ingredient.quantity * _sliderVal} '
                      '${ingredient.measure} '
                      '${ingredient.name}');
                },
              ),
            ),
            Slider(
              // 10
              min: 1,
              max: 10,
              divisions: 9,
              // 11
              label: '${_sliderVal * widget.recette.servings} servings',
              // 12
              value: _sliderVal.toDouble(),
              // 13
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              // 14
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
