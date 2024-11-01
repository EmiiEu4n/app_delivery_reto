import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Define la función aquí o impórtala desde otra clase
  Future<void> addDataToFirestore() async {
    CollectionReference smoothies =
        FirebaseFirestore.instance.collection('smoothies');

    final List<List<dynamic>> smoothieData = [
      ["Mango Magic", "36", Colors.orange, "lib/images/mango_smoothie.png"],
      ["Berry Blast", "45", Colors.purple, "lib/images/berry_smoothie.png"],
      ["Green Detox", "50", Colors.green, "lib/images/green_smoothie.png"],
      [
        "Tropical Sunrise",
        "60",
        Colors.yellow,
        "lib/images/strawberry_smoothie.png"
      ],
      ["Peach Paradise", "55", Colors.pink, "lib/images/peach_smoothie.png"],
      [
        "Chocolate Dream",
        "65",
        Colors.brown,
        "lib/images/chocolate_smoothie.png"
      ],
      [
        "Pineapple Punch",
        "48",
        Colors.yellowAccent,
        "lib/images/pineapple_smoothie.png"
      ],
      [
        "Blueberry Bliss",
        "53",
        Colors.blue,
        "lib/images/blueberry_smoothie.png"
      ],
    ];

    for (var item in smoothieData) {
      await smoothies.add({
        'nombre': item[0],
        'precio': item[1],
        'color': item[2].value, // Convertimos el color a su valor entero
        'img': item[3],
      });
    }

    print("Datos de smoothies agregados a Firestore");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Smoothies a Firestore"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            addDataToFirestore();
          },
          child: Text("Agregar Smoothies"),
        ),
      ),
    );
  }
}
