import 'package:flutter/material.dart';

class DistributedQuadrantWidget extends StatelessWidget{
  final String text;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const DistributedQuadrantWidget({
    super.key,
    required this.text,
    required this.onIncrease,
    required this.onDecrease
  });

@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: onIncrease,
                                child: const Icon(Icons.arrow_upward)
                                ),
                            ),

                            Container(
                              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                              color: Colors.blue,
                              child: Text(text)),
        
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: onDecrease,
                                child: const Icon(Icons.arrow_downward)
                                ,),
                            )
      ],
    );
  }
}