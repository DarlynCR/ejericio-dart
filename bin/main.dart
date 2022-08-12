//import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:paquetes/classes/request_response.dart';
import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) {

    final url = Uri.parse('https://reqres.in/api/users?page=2');
    http.get(url).then((res){

        final reqRes = requestResponseFromJson(res.body);
        print('page: ${reqRes.page}');
        print('per_page: ${reqRes.perPage}');
        print('id: ${reqRes.data[0].id}');
             
        //print('statusCode: ${res.statusCode}');
        //final body = jsonDecode(res.body); 
        //print('data del primer elemento: ${body['data'][0]['id']}');
    });





}
    






