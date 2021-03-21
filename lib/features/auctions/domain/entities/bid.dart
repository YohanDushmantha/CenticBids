import 'package:equatable/equatable.dart';

class Bid extends Equatable{
  final String id;
  final String auctionId;
  final int biddingAmount;
  final String uid;

  Bid({this.id, this.auctionId, this.biddingAmount, this.uid});

  @override
  List<Object> get props => [id, auctionId, biddingAmount, uid];

  factory Bid.fromJson(Map<String, dynamic> json, String id) {
    return Bid(
      id: id,
      auctionId: json["auctionId"],
      biddingAmount: json["biddingAmount"],
      uid: json["uid"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "auctionId": this.auctionId,
      "biddingAmount": this.biddingAmount,
      "uid": this.uid,
    };
  }
}