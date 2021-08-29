
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/Cubit/Cubit.dart';
import 'package:newsapp/shared/Cubit/States.dart';
import 'package:newsapp/shared/components/component/Components.dart';

class Busniess extends StatefulWidget {
  @override
  _BusniessState createState() => _BusniessState();
}

class _BusniessState extends State<Busniess> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,AppState>(


        builder: (context,state){
          Appcubit cubit = Appcubit.get(context);
          var list =cubit.business;
     if (state is GetBusinesslodingsstate){
        return CirclerProgressloadinh();}
   else return  ListView.separated(
         physics:BouncingScrollPhysics() ,
         itemBuilder: (context,index){
       return CardItem(list[index]);
     }, separatorBuilder: (context,index){
       return Container(
         height: 1.0,
         color: Colors.black,
       );
     }, itemCount: list.length);
    }, listener: (context,state){});




  }
}
