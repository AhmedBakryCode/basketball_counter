import 'package:basketball_counter_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CubitController extends Cubit<CounterController>{
  CubitController() : super(CounterAController());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void TeamIncrement({required String team,required int buttonnumber}){
    if(team=="A"){
      teamAPoints+=buttonnumber;
      emit(CounterAController());
    }
    else{
      teamBPoints+=buttonnumber;
      emit(CounterBController());
    }
  }
}