class Product {
  final int price, id;
  final double stars;
  final String title, description, image;

  Product(
      {this.title,
      this.description,
      this.stars,
      this.image,
      this.price,
      this.id});
}

List<Product> products = [
  Product(
      id: 1,
      price: 256,
      stars: 4.5,
      title: "Tortor Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6910.png"),
  Product(
      id: 2,
      price: 284,
      stars: 4.8,
      title: "Morbi Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6899.png"),
  Product(
      id: 3,
      price: 164,
      stars: 4.7,
      title: "Blandit Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6899.png"),
  Product(
      id: 3,
      price: 232,
      stars: 4.0,
      title: "Pretium Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6910.png"),
  // Product(
  //     id: 3,
  //     price: 44,
  //     title: "Pretium Chair",
  //     description: "dd",
  //     image: "dddf"),
];
