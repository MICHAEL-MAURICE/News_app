
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/Cubit/Cubit.dart';
import 'package:newsapp/shared/Cubit/States.dart';

class Sports extends StatefulWidget {
  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,AppState>(builder: (context,state){

      return  Container(child: Text("Sports",style: TextStyle(color: Colors.black,fontSize: 50.0),),);
    }, listener: (context,state){});




  }
}
