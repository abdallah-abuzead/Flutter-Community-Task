import 'package:flutter/material.dart';

class IndividualsCard extends StatelessWidget {
  const IndividualsCard({Key? key}) : super(key: key);
  final double offset = 12;
  static int id = 0;

  @override
  Widget build(BuildContext context) {
    id = 0;
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Card(
              elevation: 4,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  buildPositioned('images/image6.jpg'),
                  buildPositioned('images/image5.jpg'),
                  buildPositioned('images/image4.jpg'),
                  buildPositioned('images/image3.jpg'),
                  buildPositioned('images/image2.jpg'),
                  buildPositioned('images/image1.jpg'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Individuals', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Positioned buildPositioned(String image) {
    return Positioned(
      right: id++ * offset,
      left: 0,
      bottom: 0,
      top: 0,
      child: Container(
        width: 170,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white70, width: 1.3),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
