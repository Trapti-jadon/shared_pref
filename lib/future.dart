void main(){
  print("main: Task started");
  //fetchData
  fetchOnlineData();
  print("main: Task ended");
}

void fetchOnlineData()async{
  print("2 fetching process started");
  var data = await getData();
 print('fetched: $data');
  print("fetching completed");

}

Future<String> getData(){
 return Future.delayed(Duration(seconds: 4),()=>"some data"); 
} 