import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/distributed_quadrant_widget.dart';
import 'package:flutter_application_2/00_general/distributed_row_widget.dart';

class DistributedPassiveHomepage extends StatefulWidget {
  const DistributedPassiveHomepage({super.key});

  @override
  State<DistributedPassiveHomepage> createState() =>
      _DistributedPassiveHomepageState();
}

class _DistributedPassiveHomepageState
    extends State<DistributedPassiveHomepage> {
  int _counterOne = 0;
  int _counterTwo = 0;
  int _counterThree = 0;
  int _counterFour = 0;

  int get summarizedNumbers =>
      _counterOne + _counterTwo + _counterThree + _counterFour;

  void _changeCounter(int counter, int change) {
    setState(() {
      switch (counter) {
        case 1:
          _counterOne += change;
        case 2:
          _counterTwo += change;
        case 3:
          _counterThree += change;
        case 4:
          _counterFour += change;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 67, 134, 221),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color.fromARGB(255, 88, 182, 236),
              child: Center(
                child: Text('$summarizedNumbers'),
              ),
            ),
            const Expanded(
              child: Center(
                child: Text('Overengineered Counter'),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color.fromARGB(255, 88, 182, 236),
              child: Center(
                child: Text('$summarizedNumbers'),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 2,
              color: Colors.black,
            ),
          ),
          Center(
            child: Container(
              width: 2,
              color: Colors.black,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: DistributedRowWidget(
                  counterOne: '$_counterOne', 
                  counterTwo: '$_counterTwo', 
                  increaseOne: () => _changeCounter(4, 1), 
                  increaseTwo: () => _changeCounter(3, 1), 
                  decreaseOne: () => _changeCounter(4, -1), 
                  decreaseTwo: () => _changeCounter(3, -1))
              ),
              Expanded(
                child: DistributedRowWidget(
                  counterOne: '$_counterThree', 
                  counterTwo: '$_counterFour', 
                  increaseOne: () => _changeCounter(2, 1), 
                  increaseTwo: () => _changeCounter(1, 1), 
                  decreaseOne: () => _changeCounter(2, -1), 
                  decreaseTwo: () => _changeCounter(1, -1))
              ),
            ],
          ),
        ],
      ),
    );
  }
}