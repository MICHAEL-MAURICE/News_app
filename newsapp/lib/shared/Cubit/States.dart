 abstract class AppState{}
 class Intialstate extends AppState{}
 class AppbottomNavbar extends AppState{}
 class GetBusinessdatasucsessstate extends AppState{}
 class GetBusinesslodingsstate extends AppState{}
 class GetBusinessdataerrorsstate extends AppState{
 final String error;
 GetBusinessdataerrorsstate(this.error);
 }