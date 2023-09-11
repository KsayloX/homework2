import 'package:flutter/material.dart';

class MouseTitle extends StatelessWidget {
  final String mouseImagePath;
  final String mouseName;
  final String mousePrice;

  const MouseTitle(
      {required this.mouseImagePath,
        required this.mouseName,
        required this.mousePrice,
        super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image mouse
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: 200,
                height: 150,
                child: FittedBox(
                    fit: BoxFit.fill, child: Image.asset(mouseImagePath)),
              ),
            ),

            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mouseName,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Гарантия от производителя',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),

            // price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$mousePrice Р'),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Icon(Icons.add),
                    )
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}