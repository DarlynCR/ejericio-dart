import 'package:http/http.dart'as http;
import 'package:paquetes/classes/req_resp_countries.dart';
import 'package:paquetes/classes/request_response.dart';


int calculate() {
  return 6 * 7;
}

void getReqResponseService(){
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



void getReResponseCountries(){

    final url = Uri.parse('https://restcountries.com/v2/alpha/col');
    http.get(url).then((res){

    final reqRes = dataColombiaFromJson(res.body);
    print('===============================');
    print('Pais: ${reqRes.name}');
    print('Población: ${reqRes.population}');
    print('Fronteras: ');
    //print('''Fronteras: 
    //    ${reqRes.borders[0]}
    //    ${reqRes.borders[1]}
    //    ${reqRes.borders[2]}
    //    ${reqRes.borders[3]}
    //    ${reqRes.borders[4]}''');
    reqRes.borders.forEach((e)=>print('     $e'));
    print('Lenguajes: ${reqRes.languages[0].nativeName}');
    print('Latitud: ${reqRes.latlng[0]}');
    print('Longitud: ${reqRes.latlng[1]}');
    print('Moneda: ${reqRes.currencies[0].name}');
    print('Bandera: ${reqRes.flag}');
    print('===============================');
  
  });
}