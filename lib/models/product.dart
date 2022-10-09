class Product {
  final String image;
  final String title;
  final String description;
  final List<String> features;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.features,
  });
}

List<Product> _screens = [
  Product(
    image: 'assets/images/MockUps/login.png',
    title: 'Login',
    description: 'With an existing account',
    features: [
      '- Email and password validation',
      "- Log's the existing user in",
      "- Adds a new user in the database",
      "- Cool and simple animation to signup screen 🙂",
    ],
  ),
  Product(
    image: 'assets/images/MockUps/discover only fav.png',
    title: 'Discover',
    description: 'Items that are up for sale',
    features: [
      '- Filter resuts by favorites',
      "- Updating cart",
    ],
  ),
  Product(
    image: 'assets/images/MockUps/product-discription.png',
    title: 'Inspect',
    description: 'Each product to find out more',
    features: [
      "- Add item to cart",
    ],
  ),
  Product(
    image: 'assets/images/MockUps/cart.png',
    title: 'Order',
    description: 'The lovely items you selected',
    features: [
      "- Delete cart item by swiping to the left on the item",
      "- Item delete prevention option",
      "- Order item(s)",
    ],
  ),
  Product(
    image: 'assets/images/MockUps/drawer.png',
    title: 'Navigate',
    description: 'And manage this app',
    features: [
      "- Look at your orders",
      "- Manage your products",
      "- Logout",
    ],
  ),
  Product(
    image: 'assets/images/MockUps/userproducts.png',
    title: 'Post, Edit or Delete',
    description: 'Your own products',
    features: [
      "- Add item to sell",
      "Edit your products",
      "Delete your products",
    ],
  ),
];

List<Product> get screens {
  return [..._screens];
}
