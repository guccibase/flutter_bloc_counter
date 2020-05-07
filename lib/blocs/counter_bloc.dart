import 'package:rxdart/rxdart.dart';

class CounterBloc{


  final _increment = BehaviorSubject<int>();


  //get count
Stream<int> get count => _increment.stream;


// increment
Function(int) get changeCount => _increment.sink.add;

}