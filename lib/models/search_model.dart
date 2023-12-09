// // To parse this JSON data, do
// //
// //     final searchModel = searchModelFromJson(jsonString);

// import 'dart:convert';

// List<SearchModel> searchModelFromJson(String str) => List<SearchModel>.from(
//     json.decode(str).map((x) => SearchModel.fromJson(x)));

// String searchModelToJson(List<SearchModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class SearchModel {
//   String fact;

//   SearchModel({
//     required this.fact,
//   });

//   factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
//         fact: json["fact"],
//       );

//   Map<String, dynamic> toJson() => {
//         "fact": fact,
//       };
// }
