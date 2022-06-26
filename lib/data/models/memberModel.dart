

import 'dart:convert';










Member memberFromMap(String str) => Member.fromMap(json.decode(str));

String memberToMap(Member data) => json.encode(data.toMap());

class Member {
  Member({
    required this.id,
    required this.telephone,
    required this.designation,
    required this.phone,
    required this.imgUrl,
    required this.name,
    required this.email,
    required this.pid,
  });

  String id;
  String telephone;
  String designation;
  String phone;
  String imgUrl;
  String name;
  String email;
  int pid;

  factory Member.fromMap(Map<String, dynamic> json) => Member(
        id: json["id"],
        telephone: json["telephone"],
        designation: json["designation"],
        phone: json["phone"],
        imgUrl: json["imgUrl"],
        name: json["name"],
        email: json["email"],
        pid: json["pid"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "telephone": telephone,
        "designation": designation,
        "phone": phone,
        "imgUrl": imgUrl,
        "name": name,
        "email": email,
        "pid": pid,
      };
}
