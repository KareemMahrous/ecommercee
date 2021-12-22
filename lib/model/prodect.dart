class Product{
  num id;
  var name;
  var title;
  num category_id;
  var description;
  num price;
  num discount;
  var discount_type;
  var currency;
  num in_stock;
  var avatar;
  num price_final;
  var priceFinalText;

  Product({
    required this.id,
    required this.name,
    required this.title,
    required this.category_id,
    required this.description,
    required this.price,
    required this.discount,
    required this.discount_type,
    required this.currency,
    required this.in_stock,
    required this.avatar,
    required this.price_final,
    required this.priceFinalText,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'title': this.title,
      'category_id': this.category_id,
      'description': this.description,
      'price': this.price,
      'discount': this.discount,
      'discount_type': this.discount_type,
      'currency': this.currency,
      'in_stock': this.in_stock,
      'avatar': this.avatar,
      'price_final': this.price_final,
      'price_final_text': this.priceFinalText,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as num,
      name: map['name'] ,
      title: map['title'] ,
      category_id: map['category_id'] as num,
      description: map['description'] ,
      price: map['price'] as num,
      discount: map['discount'] as num,
      discount_type: map['discount_type'] ,
      currency: map['currency'] ,
      in_stock: map['in_stock'] as num,
      avatar: map['avatar'] ,
      price_final: map['price_final'] as num,
      priceFinalText: map['price_final_text'] ,
    );
  }
}