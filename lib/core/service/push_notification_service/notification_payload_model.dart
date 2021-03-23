import 'package:equatable/equatable.dart';

class NotificationPayloadModel extends Equatable{
  final String type;
  final Map<String,dynamic> data;

  NotificationPayloadModel({this.type,this.data});


  factory NotificationPayloadModel.fromJson(dynamic json) {
    return NotificationPayloadModel(
      type: json["type"],
      data: json["data"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "type": this.type,
      "data": this.data,
    };
  }

  @override
  List<Object> get props => [type,data];

}