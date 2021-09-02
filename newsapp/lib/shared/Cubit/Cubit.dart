
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/modules/Busness/Busness.dart';
import 'package:newsapp/modules/Science/Science.dart';
import 'package:newsapp/modules/Sports/Sports.dart';
import 'package:newsapp/network/Local/CachHelper.dart';
import 'package:newsapp/network/Remote/DioHelper.dart';
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
  if( index==1)getsportsDate();
  if(index==2)getscienceDate();
  emit(AppbottomNavbar());
}

List<dynamic>business=[];
void getbusinessDate(){
  emit(GetBusinesslodingsstate());
  if(business.length==0){
    Diohelper.getdata(url: 'v2/top-headlines',map: {'country':'eg','category':'business','apiKey':'3ceee06572a74113a892f78ef1a037d6'}).

    then((value) {
      // print(value.data['articles'][1]['title']);
      business= value.data['articles'];
      print(business);
      emit(GetBusinessdatasucsessstate());
    }).catchError((error){
      //print(error.toString());
      emit(GetBusinessdataerrorsstate(error.toString()));
    });
  }
  else{
    emit(GetBusinessdatasucsessstate());
  }

}

bool themeModebool=false;
void changeTheme({bool? isDark} ){
  if(isDark !=null) {
    themeModebool = isDark;
    emit(ThemeModeState());
  }else {
    themeModebool = !themeModebool;
    CachHelper.setData(key: 'themeModebool', value: themeModebool).then((
        value) {
      emit(ThemeModeState());
    });
  }


}

  List<dynamic>sports=[];
  void getsportsDate(){
    emit(GetSportslodingsstate());
    if(sports.length==0){  Diohelper.getdata(url: 'v2/top-headlines',map: {'country':'eg','category':'sports','apiKey':'3ceee06572a74113a892f78ef1a037d6'}).

    then((value) {
      // print(value.data['articles'][1]['title']);
      sports= value.data['articles'];
      print(sports);
      emit(GetSportsdatasucsessstate());
    }).catchError((error){
      //print(error.toString());
      emit(GetSportsdataerrorsstate(error.toString()));
    });}else{emit(GetSportsdatasucsessstate());}

  }



  List<dynamic>science=[];
  void getscienceDate(){
    emit(GetSciencelodingsstate());
    if(science.length==0){ Diohelper.getdata(url: 'v2/top-headlines',map: {'country':'eg','category':'science','apiKey':'3ceee06572a74113a892f78ef1a037d6'}).

    then((value) {
      // print(value.data['articles'][1]['title']);
      science= value.data['articles'];
      print(science);
      emit(GetSciencedatasucsessstate());
    }).catchError((error){
      //print(error.toString());
      emit(GetSciencedataerrorsstate(error.toString()));
    });}else{
      emit(GetSciencedatasucsessstate());
    }

  }


  List <dynamic>Search=[];
  void getsearchDate(String value  ){

    emit(GetSearchlodingsstate());
    if(Search.length==0){ Diohelper.getdata(url: 'v2/everything',map: {'q':'${value}','apiKey':'3ceee06572a74113a892f78ef1a037d6'}).

    then((value) {
      // print(value.data['articles'][1]['title']);
      Search= value.data['articles'];
      print(Search);
      emit(GetSearchdatasucsessstate());
    }).catchError((error){
      //print(error.toString());
      emit(GetSearchdataerrorsstate(error.toString()));
    });}else{
      emit(GetSearchdatasucsessstate());
    }

  }
}