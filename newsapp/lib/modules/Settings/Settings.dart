
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/Cubit/Cubit.dart';
import 'package:newsapp/shared/Cubit/States.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,AppState>(builder: (context,state){

      return Container(child: Text("Science"),);
    }, listener: (context,state){});




  }
}
