class Category{
  int id;
  var name;
  var avatar;

  Category({
    required this.id,
    required this.name,
    required this.avatar,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'avatar': this.avatar,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as int,
      name: map['name'],
      avatar: map['avatar'],
    );
  }
}