import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';



Future<bool>subir_imagenes(List<String> paths) async {
    var postUri = Uri.parse("http://192.168.1.36/api/v1/predecir");

    var request = new http.MultipartRequest("POST", postUri);
    request.fields['user'] = 'blah';
    //request.files.add(new http.MultipartFile.fromBytes('file', await File("<path/to/file").readAsBytes(), contentType: new MediaType('image', 'jpeg')));
    for(String path in paths){
        request.files.add(new http.MultipartFile.fromBytes('file', File(path).readAsBytesSync(), contentType: new MediaType('image', 'jpeg'),filename: "fachada"));
    }
    
    //request.files.add(new http.MultipartFile.fromBytes('file', File(paths[0]).readAsBytesSync(), contentType: new MediaType('image', 'jpeg'),filename: "jola"));

    bool resultado = false;
     await request.send().then((response) {
        if (response.statusCode == 200){
          print("TODO OK");
            response.stream.transform(utf8.decoder).listen((value){
            print(value);
          });
          resultado = true;
        } 
      }
    );
    /*
    respuesta.stream.transform(utf8.decoder).listen((value) {
        print(value);
    });*/
    /*respuesta.stream.transform(utf8.decoder).listen((value) {
        print(value);
      });*/
      return resultado;
  }
