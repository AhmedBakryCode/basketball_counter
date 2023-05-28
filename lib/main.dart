import 'dart:math';

import 'package:basketball_counter_app/bloc/counter_cubit.dart';
import 'package:basketball_counter_app/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int teamApoint=0;
    int teamBpoint=0;
      return BlocProvider(
        create: (ccntext) => CubitController(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BlocConsumer<CubitController,CounterController>(
            listener: (context, state)=>{
              if(state is CounterAController){
                teamApoint= BlocProvider.of<CubitController>(context).teamAPoints
              }
              else{
                teamBpoint= BlocProvider.of<CubitController>(context).teamBPoints

              }
            },
            builder: (BuildContext context, state) {
              return Scaffold(
              appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text('Points Counter'),
              ),
              body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
              height: 500,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text(
              'Team E',
              style: TextStyle(
              fontSize: 32,
              ),
              ),
              Text(
              '${BlocProvider.of<CubitController>(context).teamAPoints}',
              style: TextStyle(
              fontSize: 150,
              ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(8),
              primary: Colors.orange,
              minimumSize: Size(150, 50),
              ),
              onPressed: () {
                BlocProvider.of<CubitController>(context).TeamIncrement(team: "A", buttonnumber: 1);

              },
              child: Text(
              'Add 1 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              minimumSize: Size(150, 50),
              ),
              onPressed: () {
                BlocProvider.of<CubitController>(context).TeamIncrement(team: "A", buttonnumber: 2);

              },
              child: Text(
              'Add 2 Point',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              minimumSize: Size(150, 50),
              ),
              onPressed: () {
                BlocProvider.of<CubitController>(context).TeamIncrement(team: "A", buttonnumber: 3);

              },
              child: Text(
              'Add 3 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ],
              ),
              ),
              Container(
              height: 500,
              child: VerticalDivider(
              indent: 50,
              endIndent: 50,
              color: Colors.grey,
              thickness: 1,
              ),
              ),
              Container(
              height: 500,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text(
              'Team B',
              style: TextStyle(
              fontSize: 32,
              ),
              ),
              Text(
              '${BlocProvider.of<CubitController>(context).teamBPoints}',
              style: TextStyle(
              fontSize: 150,
              ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(8),
              primary: Colors.orange,
              minimumSize: Size(150, 50),
              ),
              onPressed: () {
                BlocProvider.of<CubitController>(context).TeamIncrement(team: "B", buttonnumber: 1);
              },
              child: Text(
              'Add 1 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              minimumSize: Size(150, 50),
              ),
              onPressed: () {
                BlocProvider.of<CubitController>(context).TeamIncrement(team: "B", buttonnumber: 2);
              },
              child: Text(
              'Add 2 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              minimumSize: Size(150, 50),
              ),
              onPressed: () {
                BlocProvider.of<CubitController>(context).TeamIncrement(team: "B", buttonnumber: 3);
              },
              child: Text(
              'Add 3 Point ',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ],
              ),
              ),
              ],
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(8),
              primary: Colors.orange,
              minimumSize: Size(150, 50),
              ),
              onPressed: () {
                BlocProvider.of<CubitController>(context).teamAPoints=0;
                BlocProvider.of<CubitController>(context).teamBPoints=0;
              },
              child: Text(
              'Reset',
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              ),
              ),
              ),
              ],
              ),
              );

            },
          ),
        ),
      );
    }
  }