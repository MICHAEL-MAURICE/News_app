
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/Cubit/Cubit.dart';
import 'package:newsapp/shared/Cubit/States.dart';
import 'package:newsapp/shared/components/component/Components.dart';

class Sports extends StatefulWidget {
  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Appcubit,AppState>(

        builder: (context,state){
          Appcubit cubit = Appcubit.get(context);
          var list =cubit.sports;
          if (list.length<1){
            return CirclerProgressloadinh();}
          else return  ListView.separated(
              physics:BouncingScrollPhysics() ,
              itemBuilder: (context,index){
                return CardItem(list[index],context);
              }, separatorBuilder: (context,index){
            return Container(
              height: 1.0,
              color: Colors.grey,
            );
          }, itemCount: list.length);
        }, listener: (context,state){});




  }
}
