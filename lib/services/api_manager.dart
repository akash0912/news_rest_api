import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_rest_api/constants/strings.dart';
import 'package:news_rest_api/models/newsinfo.dart';

class API_manager {
  Future<A> getNews() async {
    var client = http.Client();
    var newsModel = null;

    try {
      var response = await client.get(Strings.news_url);

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = jsonDecode(jsonString);

        newsModel = A.fromJson(jsonMap);
      }
    } catch (Execption) {
      return newsModel;
    }
    return newsModel;
  }
}
//c0b5366aca7c44228380234fcc3b0c54
