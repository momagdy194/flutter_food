class Food {
  String imageUrl;
  String description;
  String title;
  String price;

  Food({this.imageUrl, this.description, this.title, this.price});
}

final List<Food> foods = [
  Food(
    imageUrl: 'asset/image/1.jpg',
    title: 'Chiken',
    description: 'Traditional vegetrian dinner to experience',
    price: '50',
  ),
  Food(
    imageUrl: 'asset/image/2.jpg',
    title: 'Shawarma',
    description: 'Traditional vegetrian dinner to experience',
    price: '20',
  ),
  Food(
    imageUrl: 'asset/image/3.jpg',
    title: 'Burger',
    description: 'Traditional vegetrian dinner to experience',
    price: '10',
  ),
  Food(
    imageUrl: 'asset/image/4.jpg',
    title: 'Pasta',
    description: 'Traditional vegetrian dinner to experience',
    price: '30',
  ),
];
