class Product {
  final int price;
  final String id, title, category, image, subtitle, description;

  Product(
      {this.id,
      this.price,
      this.title,
      this.category,
      this.image,
      this.subtitle,
      this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        price: json['price'],
        category: json['category'],
        subtitle: json['subtitle'],
        description: json['description']);
  }
}

Product product = Product(
    id: '1',
    price: 1600,
    title: "Wood Frame",
    image: "https://i.imgur.com/sI4GvE6.png",
    category: "Chair",
    subtitle: "Tieton Armchair",
    description: description);

String description =
    "This armchair is an elegant and functional piece of furniture. It is suitable for family";
