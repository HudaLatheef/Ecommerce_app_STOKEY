import 'dart:convert';
import 'package:http/http.dart';
// import 'model.dart';

import 'dart:convert';


 
class HttpService {
  final String postsURL = "https://stokey.shop/api/merchants/all";
 
  Future<List<User>> getPosts() async {
    Response res = await get(Uri.parse(postsURL));
 
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
 
      List<User> posts = body
          .map(
            (dynamic item) => User.fromJson(item),
      )
          .toList();
 
      return posts;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}


List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));
String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class User {
  User({
    
    this.id,
    this.shop_title,
    this.name,
    this.owner_name,
    this.email,
    this.phone_number,
  });
  
  int id;
  String shop_title;
  String name;
  String owner_name;
  String email;
  int phone_number;
  
  
  
  factory User.fromJson(Map<String, dynamic> json) => User(
    
    id: json["id"],
    shop_title: json["shop_title"],
    name: json["name"],
    owner_name: json["owner_name"],
    email: json["email"],
    phone_number: json["phone_number"],
  );
  Map<String, dynamic> toJson() => {
    
    "id": id,
    "shop_title": shop_title,
    "name": name,
    "owner_name": owner_name,
    "email": email,
    "phone_number": phone_number,
    
  };
}
