



import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/modules/Busness/Busness.dart';
import 'package:newsapp/modules/Science/Science.dart';
import 'package:newsapp/modules/Sports/Sports.dart';
import 'package:newsapp/shared/Cubit/States.dart';


class Appcubit extends Cubit<AppState>{
  Appcubit() : super(Intialstate());

  static Appcubit get(context)=>BlocProvider.of(context);
int currentIndex=0;

List<Widget>screens=[Busniess(),Sports(),Science()];

List<BottomNavigationBarItem>items=[
  BottomNavigationBarItem(icon: Icon(Icons.business),title: Text("Busniess")),
  BottomNavigationBarItem(icon: Icon(Icons.sports),title: Text("Sports")),
  BottomNavigationBarItem(icon: Icon(Icons.science),title: Text("Science")),

];


void onchangebottomnavbar(int index){
  currentIndex=index;
  emit(AppbottomNavbar());
}

}