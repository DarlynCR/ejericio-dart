import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) {

    final url = Uri.parse('https://reqres.in/api/users?page=2');
    http.get(url).then((res){

        print('statusCode: ${res.statusCode}');
        final body = jsonDecode(res.body); 
        print('data del primer elemento: ${body['data'][0]['id']}');
    });





}
    






