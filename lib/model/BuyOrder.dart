class BuyOrder {
  final String title, image;
  final int id, size, price;
  int count;

  BuyOrder({
    required this.title,
    required this.image,
    required this.id,
    required this.count,
    required this.size,
    required this.price
  });
}