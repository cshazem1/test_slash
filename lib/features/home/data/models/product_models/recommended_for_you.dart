
import '../../../domain/entities/product.dart';

class RecommendedForYou extends Product {
  RecommendedForYou(
      {required super.id,
      required super.name,
      required super.price,
      required super.image});

  factory RecommendedForYou.fromJson(Map<String, dynamic> json) {
    return RecommendedForYou(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}
