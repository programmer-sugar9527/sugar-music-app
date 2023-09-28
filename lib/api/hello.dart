import 'package:http/http.dart' as http;

const String baseUrl = 'https://sugar-music-67812-4-1320459314.sh.run.tcloudbase.com/api';
Future<String> sayHello() async {
  final response = await http
      .get(Uri.parse(baseUrl + '/test'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('请求错误');
  }
}