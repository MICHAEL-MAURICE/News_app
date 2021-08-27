
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/Cubit/Cubit.dart';
import 'package:newsapp/shared/Cubit/States.dart';

class Science extends StatefulWidget {
  @override
  _ScienceState createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,AppState>(builder: (context,state){

      return Container(child: Text("Science"),);
    }, listener: (context,state){});




  }
}
