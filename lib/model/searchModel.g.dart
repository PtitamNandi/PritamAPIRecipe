// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchDrinks _$SearchDrinksFromJson(Map<String, dynamic> json) => SearchDrinks(
      (json['drinks'] as List<dynamic>?)
          ?.map((e) => Drinks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchDrinksToJson(SearchDrinks instance) =>
    <String, dynamic>{
      'drinks': instance.drinks,
    };

Drinks _$DrinksFromJson(Map<String, dynamic> json) => Drinks(
      json['strDrink'] as String,
      json['strCategory'] as String,
      json['strInstructions'] as String,
      json['strDrinkThumb'] as String,
      json['strIngredient1'] as String,
      json['strIngredient2'] as String,
      json['strAlcoholic'] as String,
    );

Map<String, dynamic> _$DrinksToJson(Drinks instance) => <String, dynamic>{
      'strDrink': instance.strDrink,
      'strCategory': instance.strCategory,
      'strInstructions': instance.strInstructions,
      'strDrinkThumb': instance.strDrinkThumb,
      'strIngredient1': instance.strIngredient1,
      'strIngredient2': instance.strIngredient2,
      'strAlcoholic': instance.strAlcoholic,
    };
