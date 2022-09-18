class Product {
  String img;
  String title;
  String price;
  String actualPrice;
  double weight;
  int count;
  Product({
    required this.img,
    required this.title,
    required this.price,
    required this.actualPrice,
    required this.weight,
    this.count = 0,
  });

  bool get isAdded {
    return count > 0;
  }

  void addToCart() {
    this.count++;
  }

  void removeFromCart() {
    this.count--;
  }
}
