import 'dart:convert';

List<SearchAlertModel> searchAlertModelFromJson(String str) =>
    List<SearchAlertModel>.from(
        json.decode(str).map((x) => SearchAlertModel.fromJson(x)));

class SearchAlertModel {
  String? id;
  String? text;
  String? textLabel;
  String? url;
  String? textAr;
  String? subText;
  String? subTextAr;
  String? idEncStr;
  bool showInList = true;
  dynamic data;

  SearchAlertModel({
    this.id,
    this.url,
    this.text,
    this.textLabel,
    this.textAr,
    this.showInList = true,
    this.data,
    this.subText,
    this.subTextAr,
    this.idEncStr,
  });

  SearchAlertModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    text = json['text'];
    textAr = json['textAr'];
    textLabel = json['textLabel'];
    data = json['data'];
    idEncStr = json['idEncStr'];
  }

  Map<String, dynamic> toJson() {
    data['id'] = id;
    data['url'] = url;
    data['text'] = text;
    data['textAr'] = textAr;
    data['textLabel'] = textLabel;
    data['data'] = data;
    data['idEncStr'] = idEncStr;

    return data;
  }
}
