class Product {
  final String image, title, description;
  final int price, size, id, stock;

  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.stock});
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/green_tea_neko.jpg",
      title: 'Green Tea Neko',
      price: 666,
      description: 'Green Tea and Cat? What more do you want!?',
      size: 100,
      stock: 100),
  Product(
    id: 2,
    image : "assets/images/cat.jpg",
    title: 'Neko',
    price: 666,
    description: 'Look at it so cute.',
    size: 100,
    stock: 99
  ),
  Product(
    id: 3,
    image: "assets/images/cat_2.png",
    title: 'Cat',
    price: 666,
    description: 'The cat is cute.',
    size: 666,
    stock: 666
  )
];
