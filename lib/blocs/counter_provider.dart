import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/blocs/counter_bloc.dart';

class CounterProvider extends InheritedWidget{
  final CounterBloc bloc;

  CounterProvider({Key key, Widget child}):bloc = CounterBloc(), super(key:key,child:child);


  bool updateShouldNotify(_) => true;


  static CounterBloc of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(CounterProvider) as CounterProvider).bloc;
  }
}