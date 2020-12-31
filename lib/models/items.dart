class Item {
  final int id;

  final int discount;
  final String imgUrl;
  final String description;
  final String offer;
  final int offerStatus;
  final double price;
  final String weight;
  final int sold;
  final double rate;

  Item(this.id, this.discount, this.imgUrl, this.description, this.offer,
      this.offerStatus,
      this.price, this.weight, this.sold, this.rate);


// Goods({this.id, this.discount, this.description, this.offer, this.offerStatus,
//     this.price, this.weight, this.sold, this.rate});
//
//
// factory Goods.fromJson(Map<String, dynamic> json) {
//   return Goods(
//       id: json['id'],
//       discount: json['discount'],
//       description: json['description'],
//       offer: json['offer'],
//       offerStatus: json['offerStatus'],
//       price: json['price'],
//       weight: json['weight'],
//       sold: json['sold'],
//       rate: json['rate']
//   );
// }


}