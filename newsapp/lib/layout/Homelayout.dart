import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/network/Remote/DioHelper.dart';
import 'package:newsapp/shared/Cubit/Cubit.dart';
import 'package:newsapp/shared/Cubit/States.dart';






class Home_layout extends StatelessWidget
{


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>Appcubit()..getbusinessDate(),
      
      child: BlocConsumer<Appcubit,AppState>(
        listener: (context,state){

        },
        builder: (context,state){
          Appcubit cubit = Appcubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("News App"),
              actions: [
                IconButton(icon: Icon(Icons.search),onPressed: (){},)
              ,IconButton(icon: Icon(Icons.settings),onPressed: (){},)

              ],

            ),

            bottomNavigationBar: BottomNavigationBar(
              items: cubit.items,
              currentIndex: cubit.currentIndex,
              onTap: (index)=>cubit.onchangebottomnavbar(index),

            ),
            body: cubit.screens[cubit.currentIndex],



          );

        },
      ),
    );
  }




}



