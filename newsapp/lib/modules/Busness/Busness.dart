
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/Cubit/Cubit.dart';
import 'package:newsapp/shared/Cubit/States.dart';

class Busniess extends StatefulWidget {
  @override
  _BusniessState createState() => _BusniessState();
}

class _BusniessState extends State<Busniess> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,AppState>(builder: (context,state){

      return  Container(child: Text("Bussness"),);
    }, listener: (context,state){});




  }
}