import 'package:flutter/material.dart';

class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
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
        Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: () => _changeCounter(4, 1),
                                child: const Icon(Icons.arrow_upward)
                                ),
                            ),

                            Container(
                              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                              color: Colors.blue,
                              child: Text('$_counterOne')),
        
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: () => _changeCounter(4, -1),
                                child: const Icon(Icons.arrow_downward)
                                ,),
                            )
      ],
    )),
                    Expanded(child: Row(
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
                                onPressed: () => _changeCounter(3, 1),
                                child: const Icon(Icons.arrow_upward)
                                ),
                            ),

                            Container(
                              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                              color: Colors.blue,
                              child: Text('$_counterTwo')),
        
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: () => _changeCounter(3, -1),
                                child: const Icon(Icons.arrow_downward)
                                ,),
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
        Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: () => _changeCounter(2, 1),
                                child: const Icon(Icons.arrow_upward)
                                ),
                            ),

                            Container(
                              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                              color: Colors.blue,
                              child: Text('$_counterThree')),
        
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: () => _changeCounter(2, -1),
                                child: const Icon(Icons.arrow_downward)
                                ,),
                            )
      ],
    )),
                    Expanded(child: Row(
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
                                onPressed: () => _changeCounter(1, 1),
                                child: const Icon(Icons.arrow_upward)
                                ),
                            ),

                            Container(
                              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                              color: Colors.blue,
                              child: Text('$_counterFour')),
        
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 150, 200, 14),
                                border: Border.all(
                                color: Colors.black,
                                width: 2,
                              )),
                              height: 40,
                              child: TextButton(
                                onPressed: () => _changeCounter(1, -1),
                                child: const Icon(Icons.arrow_downward)
                                ,),
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
