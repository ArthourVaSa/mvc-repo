part of 'counter_cubit.dart';

@immutable
// ignore: must_be_immutable
class CounterState {
  CounterState({required this.counter});

  int? counter;

  factory CounterState.initial() {
    return CounterState(
      counter: 0,
    );
  }

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CounterState && other.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;

  @override
  String toString() => 'CounterState(counter: $counter)';

  List<Object> get props => [
        counter ?? 0,
      ];
}

// final class CounterInitial extends CounterState {

//   CounterInitial({
//     this.counter,
//   }) : super(
//     counter: counter,
//   );

//   int counter = 0;

// }
