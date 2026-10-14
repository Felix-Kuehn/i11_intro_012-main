import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/00_general/counter_notifier.dart';
import 'package:flutter_application_2/00_general/distributed_quadrant_widget.dart';

class DistributedRowWidget extends StatelessWidget  {

  final String counterOne;
  final String counterTwo;

  final VoidCallback increaseOne;
  final VoidCallback increaseTwo;
  final VoidCallback decreaseOne;
  final VoidCallback decreaseTwo;

  const DistributedRowWidget (
    {super.key,
    required this.counterOne,
    required this.counterTwo,
    
    required this.increaseOne,
    required this.increaseTwo,
    required this.decreaseOne,
    required this.decreaseTwo
    });

    @override
    Widget build (BuildContext context){
      return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DistributedQuadrantWidget(
                            text: counterOne,
                            onIncrease: increaseOne,
                            onDecrease: decreaseOne,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DistributedQuadrantWidget(
                            text: counterTwo,
                            onIncrease: increaseTwo,
                            onDecrease: decreaseTwo,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
    }
}