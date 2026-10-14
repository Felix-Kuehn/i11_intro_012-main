import 'package:flutter_application_2/00_general/counter_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Notifier for the change methods [int counter] to point at the right counter [int change] to specify the change on method execute
class CounterNotifier extends Notifier<CounterState>{
  @override
  CounterState build (){
    return CounterState();
  }

    void changeCounter (int counter, int change){
        switch (counter){
            case 1: state = state.copyWith(
                counterOne: counter + change);
        
            case 2: state = state.copyWith(
                counterTwo: counter + change);

            case 3: state = state.copyWith(
                counterThree: counter + change);

            case 4: state = state.copyWith(
                counterFour: counter + change);

            default: throw ArgumentError('Invalid Change');
        }
    }
}

final counterProvider = NotifierProvider<CounterNotifier, CounterState>(CounterNotifier.new);