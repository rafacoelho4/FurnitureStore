import 'package:flutter/material.dart';

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
      id: 4,
      price: 232,
      stars: 4.0,
      title: "Pretium Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6910.png"),
  Product(
      id: 5,
      price: 164,
      stars: 4.7,
      title: "Blandit Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6910.png"),
  Product(
      id: 6,
      price: 164,
      stars: 4.7,
      title: "Blandit Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6899.png"),
  Product(
      id: 7,
      price: 164,
      stars: 4.7,
      title: "Blandit Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6899.png"),
  Product(
      id: 8,
      price: 164,
      stars: 4.7,
      title: "Blandit Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6899.png"),
  Product(
      id: 9,
      price: 164,
      stars: 4.7,
      title: "Blandit Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6899.png"),
  Product(
      id: 10,
      price: 164,
      stars: 4.7,
      title: "Blandit Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6899.png"),
  Product(
      id: 11,
      price: 164,
      stars: 4.7,
      title: "Blandit Chair",
      description: "dd",
      image: "http://pngimg.com/uploads/chair/chair_PNG6899.png"),
];

class Catagory {
  final String name;
  final IconData icon;

  Catagory({this.name, this.icon});
}

// List<Catagory> catagories = [
//   Catagory(name: 'Armchair', icon: Icons.event_seat),
//   Catagory(name: 'Bed', icon: Icons.star),
//   Catagory(name: 'Lamps', icon: Icons.add),
//   Catagory(name: 'Tables', icon: Icons.event_seat),
// ];

List<Catagory> catagories = [
  Catagory(name: 'Armchair', icon: Icons.event_seat),
  Catagory(name: 'Bed', icon: Icons.airline_seat_flat),
  Catagory(name: 'Lamps', icon: Icons.lightbulb_outline),
  Catagory(name: 'Tables', icon: Icons.table_chart),
];
