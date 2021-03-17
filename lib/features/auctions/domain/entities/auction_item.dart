import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class AuctionItem extends Equatable{
  final String id;
  final String title;
  final String description;
  final double basePrice;
  final double latestPrice;
  final List<String> images;
  final Timestamp clearanceTime;
  final Timestamp createdDate;

  AuctionItem({this.id, this.title, this.description, this.basePrice, this.latestPrice, this.images, this.clearanceTime, this.createdDate});

  @override
  List<Object> get props => [id, title, description, basePrice, latestPrice, images, clearanceTime, createdDate];
}