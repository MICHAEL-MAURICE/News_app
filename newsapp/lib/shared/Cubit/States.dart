 abstract class AppState{}
 class Intialstate extends AppState{}
 class AppbottomNavbar extends AppState{}

 class GetBusinesslodingsstate extends AppState{}
 class GetBusinessdatasucsessstate extends AppState{}
 class GetBusinessdataerrorsstate extends AppState{
 final String error;
 GetBusinessdataerrorsstate(this.error);
 }

 class GetSciencelodingsstate extends AppState{}
 class GetSciencedatasucsessstate extends AppState{}
 class GetSciencedataerrorsstate extends AppState{
  final String error;
  GetSciencedataerrorsstate(this.error);
 }
 class GetSportslodingsstate extends AppState{}
 class GetSportsdatasucsessstate extends AppState{}
 class GetSportsdataerrorsstate extends AppState{
  final String error;
  GetSportsdataerrorsstate(this.error);
 }
 class ThemeModeState extends AppState{}
