import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    // Kiểm tra xem URL có hợp lệ không
    print('URL: $url');

    http.Response response = await http.get(Uri.parse(url)); // Sử dụng Uri.parse() để chuyển đổi string thành Uri

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  }
}

void main() async {
  String url = 'https://api.openweathermap.org/data/2.5/weather?q=London&appid=your_api_key';
  NetworkHelper networkHelper = NetworkHelper(url);
  var weatherData = await networkHelper.getData();
  print(weatherData);
}
