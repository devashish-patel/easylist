class Product {
  final String name;
  final String description;
  final double price;
  final String imageLink;
  final bool isActive;
  final bool isSold;

  Product(this.name, this.price,
      {this.isActive, this.isSold, this.description, this.imageLink});

  Product.fromJson(Map<dynamic, dynamic> data)
      : name = data['name'],
        description = data['description'] ?? '',
        price = data['price'],
        imageLink = data['imageLink'] ?? 'images/not_found.jpg',
        isActive = data['isActive'] ?? true,
        isSold = data['isSold'] ?? false;
}
