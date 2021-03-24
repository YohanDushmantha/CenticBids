import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class AuctionItem extends Equatable {
  final String id;
  final String title;
  final String description;
  final int basePrice;
  final int latestPrice;
  final List<String> images;
  final int clearanceTime;
  final int createdDate;
  final bool isSold;
  final bool isExpired;

  AuctionItem(
      {this.id,
      this.title,
      this.description,
      this.basePrice,
      this.latestPrice,
      this.images,
      this.clearanceTime,
      this.createdDate,
      this.isSold,
      this.isExpired});

  @override
  List<Object> get props => [
        id,
        title,
        description,
        basePrice,
        latestPrice,
        images,
        clearanceTime,
        createdDate,
        isSold,
        isExpired
      ];

  factory AuctionItem.fromJson(Map<String, dynamic> json, String id) {
    return AuctionItem(
      id: id,
      title: json["title"],
      description: json["description"],
      basePrice: json["base_price"],
      latestPrice: json["latest_price"],
      images: List<String>.from(json['images']),
      clearanceTime: int.parse(json["clearance_date"].toString()),
      createdDate: int.parse(json["created_date"].toString()),
      isSold: json["is_sold"] ?? false,
      isExpired: json["is_expired"] ?? false,
    );
  }

}
