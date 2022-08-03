import 'package:dio/dio.dart';
import 'package:search_food/model/searchModel.dart';

class NetworkHelper {
  Future getdata(query) async {
    var dio = Dio();
    String url =
        'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=$query';
    Response response = await dio.get(url);
    if (response.statusCode == 200) {
      var obj = SearchDrinks.fromJson(response.data);
      var mydrinks = obj.drinks;
      print(mydrinks);
      return mydrinks;
    } else {
      print(response.statusCode);
    }
  }
}
