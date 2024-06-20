

import '../../../domain/entities/product.dart';

class BestSelling extends Product {


  BestSelling(
      {required super.id,
        required super.name,
        required super.price,
        required super.image});

  factory BestSelling.fromJson(Map<String, dynamic> json) => BestSelling(
    id: (json['id']),
    name: json['name'],
    price: json['price'],
    image: json['image'],
  );



}
