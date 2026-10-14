
///Saves the count for every Counter as int [counterOne][counterTwo][counterThree][counterFour]
class CounterState {
  final int counterOne;
  final int counterTwo;
  final int counterThree;
  final int counterFour;

  const CounterState({
    this.counterOne = 0,
    this.counterTwo = 0,
    this.counterThree = 0,
    this.counterFour = 0
  });


  int get summarizedNumbers => counterOne + counterTwo + counterThree + counterFour;

  CounterState copyWith ({
  int? counterOne,
  int? counterTwo,
  int? counterThree,
  int? counterFour
  }) 
    {
      return CounterState(
        counterOne: counterOne ?? this.counterOne,
        counterTwo: counterTwo ?? this.counterTwo,
        counterThree:  counterThree ?? this.counterThree,
        counterFour: counterFour ?? this.counterFour
      );
    }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
     other is CounterState &&
            counterOne == other.counterOne &&
            counterTwo == other.counterTwo &&
            counterThree == other.counterThree &&
            counterFour == other.counterFour;
}

  @override
  int get hashCode { return Object.hash(
    counterOne, 
    counterTwo, 
    counterThree, 
    counterFour
    );
  }
}

