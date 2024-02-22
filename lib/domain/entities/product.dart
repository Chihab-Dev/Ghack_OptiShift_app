import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  String name;
  String description;
  double height;
  double width;
  double length;
  double weight;
  Product({
    required this.name,
    required this.description,
    required this.height,
    required this.width,
    required this.length,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'height': height,
      'width': width,
      'length': length,
      'weight': weight,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] as String,
      description: map['description'] as String,
      height: map['height'] as double,
      width: map['width'] as double,
      length: map['length'] as double,
      weight: map['weight'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
