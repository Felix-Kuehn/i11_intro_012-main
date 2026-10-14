import 'package:flutter/material.dart';
import 'package:flutter_application_2/00_general/counter_notifier.dart';
import 'package:flutter_application_2/00_general/distributed_quadrant_widget.dart';
import 'package:flutter_application_2/00_general/distributed_row_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GlobalHomepage extends ConsumerWidget {
  const GlobalHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counters = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 67, 134, 221),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color.fromARGB(255, 88, 182, 236),
              child: Center(
                child: Text('${counters.summarizedNumbers}'),
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
                child: Text('${counters.summarizedNumbers}'),
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
                  counterOne: '${counters.counterOne}', 
                  counterTwo: '${counters.counterTwo}', 
                  increaseOne: () => ref.read(counterProvider.notifier).changeCounter(4, 1), 
                  increaseTwo: () => ref.read(counterProvider.notifier).changeCounter(3, 1), 
                  decreaseOne: () => ref.read(counterProvider.notifier).changeCounter(4, -1), 
                  decreaseTwo: () => ref.read(counterProvider.notifier).changeCounter(3, -1))
              ),
              Expanded(
                child: DistributedRowWidget(
                  counterOne: '${counters.counterThree}', 
                  counterTwo: '${counters.counterFour}', 
                  increaseOne: () => ref.read(counterProvider.notifier).changeCounter(2, 1), 
                  increaseTwo: () => ref.read(counterProvider.notifier).changeCounter(1, 1), 
                  decreaseOne: () => ref.read(counterProvider.notifier).changeCounter(2, -1), 
                  decreaseTwo: () => ref.read(counterProvider.notifier).changeCounter(1, -1))
              ),
            ],
          ),
        ],
      ),
    );
  }
}