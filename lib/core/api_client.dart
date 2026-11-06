import 'dart:convert';
import 'package:http/http.dart' as http;
import 'config.dart';

class ApiClient {
  Future<dynamic> get(String path) async {
    final res = await http.get(
      Uri.parse('${AppConfig.baseUrl}$path'),
      headers: {
        'System-Key': AppConfig.systemKey,
        'Accept': 'application/json',
      },
    );
    if (res.statusCode != 200) {
      throw Exception('HTTP ${res.statusCode}');
    }
    return jsonDecode(res.body);
  }
}