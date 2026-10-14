import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/distributed_quadrant_widget.dart';

class DistributedHomepage extends StatefulWidget {
  const DistributedHomepage({super.key});

  @override
  State<DistributedHomepage> createState() => _DistributedHomepageState();
}

class _DistributedHomepageState extends State<DistributedHomepage> {
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
        backgroundColor: Color.fromARGB(255, 67, 134, 221),
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 88, 182, 236),
              child: Center(child: Text ('$summarizedNumbers'))),
            Expanded(
              child:Center(
                child: Text('Overengineered Counter'))),
            Container(
              padding: EdgeInsets.all(8.0),
              color: Color.fromARGB(255, 88, 182, 236),
              child: Center(child: Text ('$summarizedNumbers'))),
          ],
        )
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DistributedQuadrantWidget(
          text: '$_counterOne', 
          onIncrease: () => _changeCounter(4,1), 
          onDecrease: () => _changeCounter(4,-1)          
          )
      ],
    )),
                    Expanded(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DistributedQuadrantWidget(
          text: '$_counterTwo', 
          onIncrease: () => _changeCounter(3,1), 
          onDecrease: () => _changeCounter(3,-1)          
          )
      ],
    ))
              
                  ],
                )),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DistributedQuadrantWidget(
          text: '$_counterThree', 
          onIncrease: () => _changeCounter(2,1), 
          onDecrease: () => _changeCounter(2,-1)          
          )
      ],
    )),
                    Expanded(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DistributedQuadrantWidget(
          text: '$_counterFour', 
          onIncrease: () => _changeCounter(1,1), 
          onDecrease: () => _changeCounter(1,-1)          
          )
      ],
    ))
                  ],
                ))
            ],
          )
        ],
      )
         // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
