import 'best_selling.dart';
import 'new_arrival.dart';
import 'recommended_for_you.dart';

class ProductModel {
  List<BestSelling>? bestSelling;
  List<NewArrival>? newArrival;
  List<RecommendedForYou>? recommendedForYou;

  ProductModel({this.bestSelling, this.newArrival, this.recommendedForYou});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        bestSelling: (json['bestSelling'] as List<dynamic>?)
            ?.map((e) => BestSelling.fromJson(e))
            .toList(),
        newArrival: (json['newArrival'] as List<dynamic>?)
            ?.map((e) => NewArrival.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
        recommendedForYou: (json['recommendedForYou'] as List<dynamic>?)
            ?.map(
                (e) => RecommendedForYou.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );
}
