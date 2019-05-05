import 'dart:io';
import 'package:async/async.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart';


uploadFile(List<String> paths) async {
    var postUri = Uri.parse("<pathToFile>");
    var request = new http.MultipartRequest("POST", postUri);
    request.fields['user'] = 'blah';
    //request.files.add(new http.MultipartFile.fromBytes('file', await File("<path/to/file").readAsBytes(), contentType: new MediaType('image', 'jpeg')));
    for(String path in paths){
        request.files.add(new http.MultipartFile.fromBytes('file', await File(path).readAsBytes(), contentType: new MediaType('image', 'jpeg')));
    }

    request.send().then((response) {
      if (response.statusCode == 200) print("Uploaded!");
    });
  }