import 'package:json_annotation/json_annotation.dart';
part 'searchModel.g.dart';

@JsonSerializable()
class SearchDrinks {
  final List<Drinks>? drinks;
  SearchDrinks(this.drinks);
  factory SearchDrinks.fromJson(Map<String, dynamic> json) =>
      _$SearchDrinksFromJson(json);
  Map<String, dynamic> toJson() => _$SearchDrinksToJson(this);
}

@JsonSerializable()
class Drinks {
  final String strDrink;
  final String strCategory;
  final String strInstructions;
  final String strDrinkThumb;
  final String strIngredient1;
  final String strIngredient2;
  final String strAlcoholic;
  // final String dateModified;
  Drinks(
    this.strDrink,
    this.strCategory,
    this.strInstructions,
    this.strDrinkThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strAlcoholic,
    // this.dateModified,
  );
  factory Drinks.fromJson(Map<String, dynamic> json) => _$DrinksFromJson(json);
  Map<String, dynamic> toJson() => _$DrinksToJson(this);
}
