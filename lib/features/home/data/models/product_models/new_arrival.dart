
import '../../../domain/entities/product.dart';

class NewArrival extends Product {
  NewArrival(
      {required super.id,
      required super.name,
      required super.price,
      required super.image});

  factory NewArrival.fromJson(Map<String, dynamic> json) => NewArrival(
        id: (json['id']),
        name: json['name'],
        price: json['price'],
        image: json['image'],
      );
}
